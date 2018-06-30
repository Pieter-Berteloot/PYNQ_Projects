#ifndef _PYNQ_FILTERS_H_
#define _PYNQ_FILTERS_H_

#include <ap_fixed.h>
#include <ap_int.h>

#include "hls_video.h"
#include "hls_math.h"

typedef hls::stream< ap_axiu<24,1,1,1> > AXI_STREAM;
typedef hls::Mat<1080,1920, HLS_8UC3> RGB_IMAGE;

typedef hls::Mat<1080,1920, HLS_10SC3> RGB10_IMAGE;

typedef hls::Mat<1080,1920, HLS_8UC1> GRAY_IMAGE;
typedef hls::Mat<1080,1920, HLS_10SC1> GRAY10_IMAGE;


typedef hls::Scalar<1, unsigned char> GRAY_PIX;
typedef hls::Scalar<1, ap_int<10> > GRAY10_PIX;

typedef hls::Scalar<3, unsigned char> RGB_PIX;
typedef hls::Scalar<3, ap_int<10> > RGB10_PIX;


typedef ap_fixed<12,6,AP_RND> COEF_T;
typedef ap_int<16>           INDEX_T;

typedef ap_fixed<10,2, AP_RND, AP_SAT> coeff_type;

#define INPUT_IMAGE		"test_1080p.bmp"
#define OUTPUT_IMAGE 	"test_output_1080p.bmp"
#define OUTPUT_IMAGE2 	"test_output_1080p2.bmp"
#define OUTPUT_IMAGE3 	"test_output_1080p3.bmp"


void pynq_filters(AXI_STREAM& input, AXI_STREAM& output, int reduce);

#endif
