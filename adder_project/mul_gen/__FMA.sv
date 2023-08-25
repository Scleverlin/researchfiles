`include "__wallace_tree_multiplier.sv"
module FMA_32 (a,b,c,out);
input [31:0] a,b,c;
output [63:0] out;

wire [63:0] tmp;
wallace_mulp_32x32  mul (a,b,tmp);
wire cout;
HC_64_BK2_KS4 hca (tmp,c,1'b0,out,cout);

endmodule