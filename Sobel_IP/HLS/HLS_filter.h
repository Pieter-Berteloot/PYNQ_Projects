#ifndef _HLS_filter_H_
#define _HLS_filter_H_

#include "hls_video.h"

typedef hls::stream< ap_axiu<24,1,1,1> > AXI_STREAM;
typedef hls::Mat<1080,1920, HLS_8UC1> GRAY_IMAGE;
typedef hls::Mat<1080,1920, HLS_8UC3> RGB_IMAGE;

typedef hls::Scalar<1, unsigned char> GRAY_PIX;
typedef hls::Scalar<3, unsigned char> RGB_PIX;
typedef hls::Scalar<3, ap_int<10> > RGB10_PIX;

typedef hls::Mat<1080,1920, HLS_10SC3> RGB10_IMAGE;

typedef ap_int<10> Pixel;

typedef ap_fixed<8,4,AP_RND> COEF_T;
typedef ap_fixed<10,2, AP_RND, AP_SAT> coeff_type;


typedef ap_int<16>           INDEX_T;
typedef ap_fixed<10,2, AP_RND, AP_SAT> coeff_type;


#define INPUT_IMAGE		"test_1080p.bmp"
#define OUTPUT_IMAGE 	"test_output_1080p.bmp"

void filter(AXI_STREAM& input, AXI_STREAM& output,
			int indexOriginal, int index2, int index3,
			char modeOriginal, char mode2,char mode1,
			char mode);

#endif
