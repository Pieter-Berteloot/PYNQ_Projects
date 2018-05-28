#include "example_split.h"

/*
 * Gray function
 * Converts a RGB image to Gray
 */

coeff_type const1 = 0.114;
coeff_type const2 = 0.587;
coeff_type const3 = 0.2989;

void RGB2Gray(
		RGB_IMAGE& img_in,
		RGB_IMAGE& img_out
        ) {

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

		   gray =  const1 * pin.val[0] + const2 * pin.val[1] + const3 * pin.val[2];
		   pout.val[0] = gray;
		   pout.val[1] = gray;
		   pout.val[2] = gray;

           img_out << pout;
        }
    }
}

/*
 * Sobel function
 *
 * directoin:
 * 	1: sobel X
 *	0: sobel Y
 */
void sobel(
		RGB_IMAGE& img_in,
		RGB_IMAGE& img_out,
		char direction
        ) {

	if(direction==1)
		hls::Sobel<1,0,3>(img_in, img_out);
	else if(direction == 0)
		hls::Sobel<0,1,3>(img_in, img_out);
	else
		hls::Sobel<0,1,3>(img_in, img_out);
}


void split_ip(AXI_STREAM& in_data, AXI_STREAM& out_data, char direction) {

#pragma HLS INTERFACE axis register port=in_data
#pragma HLS INTERFACE axis register port=out_data

#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE s_axilite port=direction

#pragma HLS dataflow

    RGB_IMAGE img_0(1080, 1920);
    RGB_IMAGE img_1(1080, 1920);
    RGB_IMAGE img_2(1080, 1920);

	// Convert AXI4 Stream data to hls::mat format
	hls::AXIvideo2Mat(in_data, img_0);

	//call the split function
	RGB2Gray(img_0, img_1);
	sobel(img_1, img_2, direction);


	//Convert the mat to Axi video stream
	hls::Mat2AXIvideo(img_2, out_data);
}
