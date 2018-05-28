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

/*
 * Add function
 * adds 2 images together
 */
void add2(RGB_IMAGE& img_in0, RGB_IMAGE& img_in1, RGB_IMAGE& img_out) {

	RGB_PIX pin0, pin1;
	RGB_PIX pout;

L_row: for(int row = 0; row < 1080; row++) {
#pragma HLS LOOP_TRIPCOUNT min=720 max=1080

L_col: for(int col = 0; col < 1920; col++) {
#pragma HLS LOOP_TRIPCOUNT min=1280 max=1920
#pragma HLS loop_flatten off
#pragma HLS PIPELINE II = 1

           img_in0 >> pin0;
           img_in1 >> pin1;

		   pout = (pin0 + pin1);

           img_out << pout;
        }
    }
}


void add(
		RGB_IMAGE& img_in,
		RGB_IMAGE& img_out,
		char direction
        ) {

	if(direction==1)
		hls::Sobel<0,1,0,3>(img_in, img_out);
	else if(direction == 0)
		hls::Sobel<0,0,1,3>(img_in, img_out);
	else
		hls::Sobel<0,0,1,3>(img_in, img_out);
}

/*
 * copy function
 * copy an image to 2 images
 */
void copy2(RGB_IMAGE& img_in, RGB_IMAGE& img_out0, RGB_IMAGE& img_out1) {

	RGB_PIX pin;
	RGB_PIX pout;

L_row: for(int row = 0; row < 1080; row++) {
#pragma HLS LOOP_TRIPCOUNT min=720 max=1080

L_col: for(int col = 0; col < 1920; col++) {
#pragma HLS LOOP_TRIPCOUNT min=1280 max=1920
#pragma HLS loop_flatten off
#pragma HLS PIPELINE II = 1

           img_in >> pin;

		   pout = pin;

           img_out0 << pout;
           img_out1 << pout;
        }
    }
}



void split_ip(AXI_STREAM& in_data, AXI_STREAM& out_data) {

#pragma HLS INTERFACE axis register port=in_data
#pragma HLS INTERFACE axis register port=out_data

#pragma HLS INTERFACE ap_ctrl_none port=return

#pragma HLS dataflow

    RGB_IMAGE img_0(1080, 1920);
    RGB_IMAGE img_1(1080, 1920);
    RGB_IMAGE img_2(1080, 1920);
    RGB_IMAGE img_3(1080, 1920);
    RGB_IMAGE img_4(1080, 1920);
    RGB_IMAGE img_5(1080, 1920);
    RGB_IMAGE img_6(1080, 1920);


	// Convert AXI4 Stream data to hls::mat format
	hls::AXIvideo2Mat(in_data, img_0);

	//Convert to gray image
	RGB2Gray(img_0, img_1);

	//copy the input image
	copy2(img_1, img_2, img_3);

	//sobel functions
	sobel(img_2, img_4, 0);
	sobel(img_3, img_5, 1);

	//add sobel x and y
	add2(img_4, img_5, img_6);

	//Convert the mat to Axi video stream
	hls::Mat2AXIvideo(img_6, out_data);
}
