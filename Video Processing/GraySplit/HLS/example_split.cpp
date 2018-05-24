#include "example_split.h"

/*
 * Slit function
 *
 * Splits an image into a RGB and an gray part.
 *
 * int index:	col number where the split is
 */

coeff_type const1 = 0.114;
coeff_type const2 = 0.587;
coeff_type const3 = 0.2989;

void split(
		RGB_IMAGE& img_in,
		RGB_IMAGE& img_out,
        int index) {

	RGB_PIX pin;
	RGB_PIX pout;
	char gray;
L_row: for(int row = 0; row < 1080; row++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=1080

	L_col: for(int col = 0; col < 1920; col++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=1920
#pragma HLS loop_flatten off
#pragma HLS PIPELINE II = 1

           img_in >> pin;

		   if(col <= index){
			   pout.val[0] = pin.val[0];
			   pout.val[1] = pin.val[1];
			   pout.val[2] = pin.val[2];
		   }
		   else{
			   gray = const1 * pin.val[0] + const2 * pin.val[1] + const3 * pin.val[2];
			   pout.val[0] = gray;
			   pout.val[1] = gray;
			   pout.val[2] = gray;
		   }

           img_out << pout;
        }
    }
}

void split_ip(AXI_STREAM& in_data, AXI_STREAM& out_data, int a) {

#pragma HLS INTERFACE axis register port=in_data
#pragma HLS INTERFACE axis register port=out_data

#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE s_axilite port=a

    RGB_IMAGE img_0(1080, 1920);
    RGB_IMAGE img_1(1080, 1920);
    RGB_IMAGE img_2(1080, 1920);

	// Convert AXI4 Stream data to hls::mat format
	hls::AXIvideo2Mat(in_data, img_0);

	//call the split function
	split(img_0, img_1, a);

	//Convert the mat to Axi video stream
	hls::Mat2AXIvideo(img_1, out_data);
}
