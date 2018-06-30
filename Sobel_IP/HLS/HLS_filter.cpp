#include "HLS_filter.h"

coeff_type const1 = 0.114;
coeff_type const2 = 0.587;
coeff_type const3 = 0.2989;


/*
 * Color mode function
 * Changes the colorMode of the image
 *
 * char mode:	colormode
 * 		0: RGB
 * 		1: GRAY
 * 		2: left RGB, right GRAY
 * 		3: black
 * 		4: left RGB, right black
 * 		5: left black, right gray
 */

void colorMode(RGB10_IMAGE& img_in, RGB10_IMAGE& img_out, char mode){
	RGB10_PIX pin;
	RGB10_PIX pout;
	Pixel gray;
	L_row: for(int row = 0; row < 1080; row++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=1080
		L_col: for(int col = 0; col < 1920; col++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=1920
#pragma HLS pipeline rewind
			img_in >> pin;
				if(mode == 0){
	               pout.val[0] = pin.val[0];
	               pout.val[1] = pin.val[1];
				   pout.val[2] = pin.val[2];

	           } else if(mode == 1) {
				   gray = const1 * pin.val[0] + const2 * pin.val[1] + const3 * pin.val[2];
				   pout.val[0] = gray;
				   pout.val[1] = gray;
				   pout.val[2] = gray;

	           } else if(mode == 2){
		           if(col <= 960){
		               pout.val[0] = pin.val[0];
		               pout.val[1] = pin.val[1];
					   pout.val[2] = pin.val[2];

		           } else {
		               gray = const1 * pin.val[0] + const2 * pin.val[1] + const3 * pin.val[2];
		               pout.val[0] = gray;
		               pout.val[1] = gray;
		               pout.val[2] = gray;
		           }

	           }  else if(mode == 3){
	               pout.val[0] = 0;
	               pout.val[1] = 0;
				   pout.val[2] = 0;

	           } else if(mode == 4){
		           if(col <= 960){
		               pout.val[0] = pin.val[0];
		               pout.val[1] = pin.val[1];
					   pout.val[2] = pin.val[2];

		           } else {
		               pout.val[0] = 0;
		               pout.val[1] = 0;
		               pout.val[2] = 0;
		           }

	           } else if(mode == 5){
		           if(col <= 960){
		               pout.val[0] = 0;
		               pout.val[1] = 0;
					   pout.val[2] = 0;

		           } else {
		               gray = const1 * pin.val[0] + const2 * pin.val[1] + const3 * pin.val[2];
		               pout.val[0] = gray;
		               pout.val[1] = gray;
		               pout.val[2] = gray;
		           }

	           }

	           else {
	               pout.val[0] = pin.val[0];
	               pout.val[1] = pin.val[1];
				   pout.val[2] = pin.val[2];

	           }
	           img_out << pout;
		}
	}
}



/*
 * Add function
 * adds 2 images together
 */
void add(RGB10_IMAGE& img_in0, RGB10_IMAGE& img_in1, RGB10_IMAGE& img_out) {

	RGB10_PIX pin0, pin1;
	RGB10_PIX pout;

L_row: for(int row = 0; row < 1080; row++) {
#pragma HLS LOOP_TRIPCOUNT min=720 max=1080

L_col: for(int col = 0; col < 1920; col++) {
#pragma HLS LOOP_TRIPCOUNT min=1280 max=1920
#pragma HLS loop_flatten off
#pragma HLS PIPELINE II = 1

           img_in0 >> pin0;
           img_in1 >> pin1;

		   //pout = (pin0 + pin1)/2;
		   pout = (pin0 + pin1);

           img_out << pout;
        }
    }
}

/*
 * Add function
 * adds 3 images together
 */
void add3(RGB10_IMAGE& img_in0,int a, RGB10_IMAGE& img_in1, int b, RGB10_IMAGE& img_in2, int c, RGB10_IMAGE& img_out) {

	RGB10_PIX pin0, pin1, pin2;
	RGB10_PIX pout;

L_row: for(int row = 0; row < 1080; row++) {
#pragma HLS LOOP_TRIPCOUNT min=720 max=1080

L_col: for(int col = 0; col < 1920; col++) {
#pragma HLS LOOP_TRIPCOUNT min=1280 max=1920
#pragma HLS loop_flatten off
#pragma HLS PIPELINE II = 1

           img_in0 >> pin0;
           img_in1 >> pin1;
           img_in2 >> pin2;
		   pout = (pin0/a + pin1/b + pin2/c);

           img_out << pout;
        }
    }
}

/*
 * copy function
 * copy an image to 2 images
 */
void copy2(RGB10_IMAGE& img_in, RGB10_IMAGE& img_out0, RGB10_IMAGE& img_out1) {

	RGB10_PIX pin;
	RGB10_PIX pout;

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

/*
 * copy function
 * copy an image to 3 images
 */
void copy3(RGB10_IMAGE& img_in, RGB10_IMAGE& img_out0, RGB10_IMAGE& img_out1, RGB10_IMAGE& img_out2) {

	RGB10_PIX pin;
	RGB10_PIX pout;

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
           img_out2 << pout;
        }
    }
}

void convertToSigned(RGB_IMAGE& img_in0, RGB10_IMAGE& img_out){

	RGB_PIX   pin; //the input
	RGB10_PIX pout; // for the output

L_row: for(int row = 0; row < 1080; row++) {
#pragma HLS LOOP_TRIPCOUNT min=720 max=1080

L_col: for(int col = 0; col < 1920; col++) {
#pragma HLS LOOP_TRIPCOUNT min=1280 max=1920
#pragma HLS loop_flatten off
#pragma HLS PIPELINE II = 1

			img_in0 >> pin;
			pout.val[0]=pin.val[0];
			pout.val[1]=pin.val[1];
			pout.val[2]=pin.val[2];
			img_out << pout;
        }
    }
}

void convertToUnsigned(RGB10_IMAGE& img_in0, RGB_IMAGE& img_out){

	RGB10_PIX   pin; // for the output
	RGB_PIX   pout; //the input

L_row: for(int row = 0; row < 1080; row++) {
#pragma HLS LOOP_TRIPCOUNT min=720 max=1080

L_col: for(int col = 0; col < 1920; col++) {
#pragma HLS LOOP_TRIPCOUNT min=1280 max=1920
#pragma HLS loop_flatten off
#pragma HLS PIPELINE II = 1

			img_in0 >> pin;
			if (pin.val[0] >= 255)
				pout.val[0]=255;
			else if(pin.val[0]>=0)
				pout.val[0]=pin.val[0];
			else
				pout.val[0] = 0;

			if (pin.val[1] >= 255)
				pout.val[1]=255;
			else if(pin.val[1]>=0)
				pout.val[1]=pin.val[1];
			else
				pout.val[1] = 0;

			if (pin.val[2] >= 255)
				pout.val[2]=255;
			else if(pin.val[2]>=0)
				pout.val[2]=pin.val[2];
			else
				pout.val[2] = 0;

			img_out << pout;
        }
    }
}


void filter(AXI_STREAM& input, AXI_STREAM& output, 	int index, int index2, int index3,
													char modeOriginal, char mode2,char mode1,
													char mode) {

#pragma HLS INTERFACE axis register port=input
#pragma HLS INTERFACE axis register port=output

#pragma HLS INTERFACE ap_ctrl_none port=return

#pragma HLS INTERFACE s_axilite port=index
#pragma HLS INTERFACE s_axilite port=index2
#pragma HLS INTERFACE s_axilite port=index3
#pragma HLS INTERFACE s_axilite port=modeOriginal
#pragma HLS INTERFACE s_axilite port=mode1
#pragma HLS INTERFACE s_axilite port=mode2
#pragma HLS INTERFACE s_axilite port=mode

	RGB_IMAGE img_input_8U3(1080, 1920);
	RGB_IMAGE img_output_8S3(1080, 1920);

	RGB10_IMAGE img_input_10S3(1080, 1920);
	RGB10_IMAGE img_colorMode_10S3(1080, 1920);
	RGB10_IMAGE img_colorMode_copy1_10S3(1080, 1920);
	RGB10_IMAGE img_colorMode_copy2_10S3(1080, 1920);
	RGB10_IMAGE img_colorMode_copy3_10S3(1080, 1920);
	RGB10_IMAGE img_SobelX_10S3(1080, 1920);
	RGB10_IMAGE img_SobelY_10S3(1080, 1920);
	RGB10_IMAGE img_colorMode2_copy1_10S3(1080, 1920);
	RGB10_IMAGE img_SobelX_colorMode_10S3(1080, 1920);
	RGB10_IMAGE img_SobelY_colorMode_10S3(1080, 1920);
	RGB10_IMAGE img_output_10S3(1080, 1920);


#pragma HLS dataflow
#pragma HLS stream depth=19200  variable=img_colorMode_copy1_10S3.data_stream
#pragma HLS stream depth=19200  variable=img_colorMode2_copy1_10S3.data_stream


	hls::AXIvideo2Mat(input, img_input_8U3);

	convertToSigned(img_input_8U3, img_input_10S3);

	colorMode(img_input_10S3, img_colorMode_10S3, mode);

	copy3(img_colorMode_10S3,img_colorMode_copy1_10S3,img_colorMode_copy2_10S3,img_colorMode_copy3_10S3);

	hls::Sobel<0,1,0,3>(img_colorMode_copy2_10S3, img_SobelX_10S3);
	hls::Sobel<0,0,1,3>(img_colorMode_copy3_10S3, img_SobelY_10S3);

	colorMode(img_colorMode_copy1_10S3, img_colorMode2_copy1_10S3,modeOriginal);
	colorMode(img_SobelX_10S3, img_SobelX_colorMode_10S3,mode1);
	colorMode(img_SobelY_10S3, img_SobelY_colorMode_10S3,mode2);

	add3(img_SobelY_colorMode_10S3,index2 ,img_SobelX_colorMode_10S3, index3, img_colorMode2_copy1_10S3, index, img_output_10S3);

	convertToUnsigned(img_output_10S3, img_output_8S3);
	// Convert the hls::mat format to AXI4 Stream format with SOF, EOL signals
	hls::Mat2AXIvideo(img_output_8S3, output);
}



