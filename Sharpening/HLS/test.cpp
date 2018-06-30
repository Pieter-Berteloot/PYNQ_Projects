#include "pynq_filters.h"
#include "hls_opencv.h"

int main(int argc, char** argv){

	IplImage* src = cvLoadImage(INPUT_IMAGE);
	IplImage* dst = cvCreateImage(cvGetSize(src), src->depth, src->nChannels);
	AXI_STREAM src_axi, dst_axi;
	IplImage2AXIvideo(src, src_axi);
	pynq_filters(src_axi, dst_axi, 100);
	AXIvideo2IplImage(dst_axi, dst);
	cvSaveImage(OUTPUT_IMAGE, dst);

}
