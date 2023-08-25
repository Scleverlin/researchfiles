`include "__wallace_tree_multiplier.sv"
`include "HC_64_BK0_KS6.v"
module FMA_32 (a,b,c,out);
input [31:0] a,b,c;
output [63:0] out;

wire [63:0] tmp1,tmp2,tmp;
wallace_tree_32x32   w_tree(a, b,tmp1,tmp2);
// easy_mul   mul (a,b,tmp);

wire cout;
wire [63:0] tmp_c;
assign tmp_c = {32'b0,c};
HC_64_BK0_KS6 hca1 (tmp1,tmp2,1'b0,tmp,cout);

HC_64_BK0_KS6 hca2 (tmp,tmp_c,1'b0,out,cout);

endmodule

module easy_mul (a,b,out);
input [31:0] a,b;
output [63:0] out;

assign out = a*b;
endmodule