#ifndef _EXAMPLE_SPLIT_H_
#define _EXAMPLE_SPLIT_H_

#include "hls_video.h"

typedef hls::stream< ap_axiu<24,1,1,1> > AXI_STREAM;
typedef hls::Mat<1080,1920, HLS_8UC3> RGB_IMAGE;

typedef hls::Scalar<1, unsigned char> GRAY_PIX;
typedef hls::Scalar<3, unsigned char> RGB_PIX;

typedef ap_fixed<10,2, AP_RND, AP_SAT> coeff_type;

#define INPUT_IMAGE		"test_1080p.bmp"
#define OUTPUT_IMAGE 	"test_output_1080p.bmp"

void split_ip(AXI_STREAM& input, AXI_STREAM& output, char direction);

#endif
