#include <ap_fixed.h>
#include <ap_int.h>

typedef ap_uint<8> pixel_type;
typedef ap_int<8> pixel_type_s;
typedef ap_ufixed<8,0, AP_RND, AP_SAT> comp_type;

int col = 0;

struct video_stream {
    struct {
        pixel_type p1;
        pixel_type p2;
        pixel_type p3;
    } data;
    ap_uint<1> user;
    ap_uint<1> last;
};

void split_ip(video_stream* in_data, video_stream* out_data, int a) {

#pragma HLS CLOCK domain=default
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis port=in_data
#pragma HLS INTERFACE axis port=out_data
#pragma HLS INTERFACE s_axilite port=a


    out_data->user = in_data->user;
    out_data->last = in_data->last;
    comp_type in1, in2, in3, out1, out2, out3;

    in1.range() = in_data->data.p1;
    in2.range() = in_data->data.p2;
    in3.range() = in_data->data.p3;


    if(col <= a){
        out1 = in1;
        out2 = in2;
        out3 = in3;
    } else {
        out1 = in1;
        out2 = 0;
        out3 = 0;
    }

    if(in_data->last)
            col = 0;

    col++;
    out_data->data.p1 = out1.range();
    out_data->data.p2 = out2.range();
    out_data->data.p3 = out3.range();
}
