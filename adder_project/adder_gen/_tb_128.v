module tb_bka_16 (
    
);
reg [127:0] a,b;
output [127:0] sum;
output  cout;
reg cin;
parameter delay=20; 

Hybrid_128_BK3_KL4_Fanout8  shi (a,b,cin,sum,cout);

initial begin
   $dumpfile("dump.vcd"); 
   $dumpvars;
end


initial begin                                                  
#10   a=2;b=5;cin=1'b0;             
#delay a=1;b=1;
#delay a=20;b=20;cin=1;
#delay a=75;b=75;cin=1;
#delay a=128;b=128;cin=0;
#delay a=200;b=20;cin=0;   
#delay a=1024;b=1500;cin=0;   
#delay a=2000;b=2000;cin=0;   
#delay a=6500;b=2000;cin=0;   
$display("sum=%d,cout=%d",sum);
#delay a=65000;b=200;cin=1;
// #delay a=650000000;b=100000;cin=1;
$display("sum=%d,cout=%d",sum);
#delay a=1000000;b=1;cin=1;
$display("sum=%d,cout=%d",sum);
#delay a=1;b=1844674484467448446744;cin=1;
$display("sum=%d,cout=%d",sum);

end 
// initial begin
//   clk=0;
//      forever #10 clk = ~clk;  
// end 


initial begin 
    #1000 $finish;
end


endmodule //tb_c_select_adder_8