#include "HLS_filter.h"
#include "hls_opencv.h"


int main(int argc, char** argv){

	IplImage* src = cvLoadImage(INPUT_IMAGE);
	IplImage* dst = cvCreateImage(cvGetSize(src), src->depth, src->nChannels);

	AXI_STREAM src_axi, dst_axi;
	IplImage2AXIvideo(src, src_axi);

	filter(src_axi, dst_axi, 1,2,2,0,0,0,0);

	AXIvideo2IplImage(dst_axi, dst);
	cvSaveImage(OUTPUT_IMAGE, dst);
}
