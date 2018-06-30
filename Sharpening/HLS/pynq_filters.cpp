#include "pynq_filters.h"

void convertToSigned(GRAY_IMAGE& img_in0, GRAY10_IMAGE& img_out){

	GRAY_PIX   pin; //the input
	GRAY10_PIX pout; // for the output

L_row: for(int row = 0; row < 1080; row++) {
#pragma HLS LOOP_TRIPCOUNT min=720 max=1080

L_col: for(int col = 0; col < 1920; col++) {
#pragma HLS LOOP_TRIPCOUNT min=1280 max=1920
#pragma HLS loop_flatten off
#pragma HLS PIPELINE II = 1

			img_in0 >> pin;
			pout.val[0]=pin.val[0];
			img_out << pout;
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

void convertToUnsigned(GRAY10_IMAGE& img_in0, GRAY_IMAGE& img_out){

	GRAY10_PIX   pin; // for the output
	GRAY_PIX   pout; //the input

L_row: for(int row = 0; row < 1080; row++) {
#pragma HLS LOOP_TRIPCOUNT min=720 max=1080

L_col: for(int col = 0; col < 1920; col++) {
#pragma HLS LOOP_TRIPCOUNT min=1280 max=1920
#pragma HLS loop_flatten off
#pragma HLS PIPELINE II = 1

			img_in0 >> pin;
			if (pin.val[0] >= 256)
				pout.val[0]=255;
			else if(pin.val[0] >= 0)
				pout.val[0]=pin.val[0];
			else
				pout.val[0]=-pin.val[0];

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

void gaussianBlur(GRAY_IMAGE& img_in, GRAY_IMAGE& img_out) {

	/**
	const ap_fixed<16,2,AP_RND> coef_gaussian[5][5]= {
	  {0.0004808358,	0.005010436,	0.0109437877,	0.005010436,	0.0004808358},
	  {0.005010436,		0.0522098347,	0.11403688,		0.0522098347,		0.005010436},
	  {0.0109437877,	0.11403688,		0.25,			0.11403688,		0.0109437877},
	  {0.005010436,		0.0522098347,	0.11403688,		0.0522098347,		0.005010436},
	  {0.0004808358,	0.005010436,	0.0109437877,	0.005010436,	0.0004808358},
	};
	**/

	const ap_fixed<16,2,AP_RND> coef_gaussian[5][5]= {
	  {0.000874,	0.006976,	0.01386,	0.006976,	0.000874},
	  {0.006976,	0.0557,		0.110656,	0.0557,	0.006976},
	  {0.01386,		0.110656,	0.219833,	0.110656,	0.01386},
	  {0.006976,	0.0557,		0.110656,	0.0557,	0.006976},
	  {0.000874,	0.006976,	0.01386,	0.006976,	0.000874},
	};


	hls::Window<5, 5, ap_fixed<16,2,AP_RND>  > kernel;
	for (int r=0; r<3; r++) for (int c=0; c<3; c++) kernel.val[r][c] = coef_gaussian[r][c];

	// point
	hls::Point_<INDEX_T> anchor;
	anchor.x=-1;
	anchor.y=-1;

	hls::Filter2D <hls::BORDER_REFLECT> (img_in, img_out, kernel, anchor);
}

void laplacian(GRAY10_IMAGE& img_in, GRAY10_IMAGE& img_out) {

	const COEF_T coef_v[3][3]= {
	  {-1,-1, -1},
	  {-1,8,-1},
	  {-1,-1,-1}
	};
	hls::Window<3,3,COEF_T> Sv;
	for (int r=0; r<3; r++) for (int c=0; c<3; c++) Sv.val[r][c] = coef_v[r][c];

	// point
	hls::Point_<INDEX_T> anchor;
	anchor.x=-1;
	anchor.y=-1;

	hls::Filter2D <hls::BORDER_REFLECT> (img_in, img_out, Sv, anchor);
}


void pynq_filters(AXI_STREAM& in_data, AXI_STREAM& out_data, int reduce) {
#pragma HLS INTERFACE axis register port=in_data
#pragma HLS INTERFACE axis register port=out_data
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE s_axilite port=reduce     bundle=control
#pragma HLS dataflow

	RGB_IMAGE input_image_8U3(1080, 1920);
	RGB_IMAGE output_image_8U3(1080, 1920);
	RGB_IMAGE input_image_8U3_copy1(1080, 1920);
	RGB_IMAGE input_image_8U3_copy2(1080, 1920);
	GRAY_IMAGE image_blur(1080, 1920);
	GRAY_IMAGE input_image_8U1(1080, 1920);
	GRAY10_IMAGE image_blur_10S1(1080, 1920);
	GRAY10_IMAGE image_laplacian_10S1(1080, 1920);
	GRAY10_IMAGE image_laplacian_reduced_10S1(1080, 1920);
	RGB10_IMAGE image_laplacian_10S3(1080, 1920);
	RGB10_IMAGE input_image_10S3(1080, 1920);
	RGB10_IMAGE ouput_image_10S3(1080, 1920);

#pragma HLS stream depth=19200 variable=input_image_8U3_copy2.data_stream
#pragma HLS stream depth=5000 variable=input_image_10S3.data_stream

	//axi stream to matrix
	hls::AXIvideo2Mat(in_data, input_image_8U3);

	//duplicate the input image
	hls::Duplicate( input_image_8U3, input_image_8U3_copy1, input_image_8U3_copy2 );

	//convert to 8 bit unsigned
	hls::CvtColor<HLS_RGB2GRAY>(input_image_8U3_copy1, input_image_8U1);

	//reduce noise with smoothing
	gaussianBlur(input_image_8U1, image_blur);

	//convert to 1 channel 10 bit signed datatype
	convertToSigned(image_blur, image_blur_10S1);

	//calculate laplacian
	laplacian(image_blur_10S1, image_laplacian_10S1);

	//scale the intensity of the laplacian
	hls::Scale( image_laplacian_10S1, image_laplacian_reduced_10S1,((double)reduce)/100,0.0);

	//convert data types so they can be added
	hls::CvtColor<HLS_GRAY2RGB>(image_laplacian_reduced_10S1, image_laplacian_10S3);
	convertToSigned(input_image_8U3_copy2, input_image_10S3);
	hls::AddWeighted(image_laplacian_10S3, 1, input_image_10S3, 1 , 0 , ouput_image_10S3);

	//convert back to 3 channel 8 bit unsigned datatype
	convertToUnsigned(ouput_image_10S3, output_image_8U3);

	hls::Mat2AXIvideo(output_image_8U3, out_data);
}



