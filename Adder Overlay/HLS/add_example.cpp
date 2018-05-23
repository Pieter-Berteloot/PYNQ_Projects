#include <ap_fixed.h>
#include <ap_int.h>

void add_function( int a, int b, int* c){

#pragma HLS INTERFACE s_axilite port=return bundle=control

#pragma HLS INTERFACE s_axilite port=a bundle=control
#pragma HLS INTERFACE s_axilite port=b bundle=control
#pragma HLS INTERFACE s_axilite port=c bundle=control

	*c = a + b;
}
