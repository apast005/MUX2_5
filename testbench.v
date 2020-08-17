module testbench();

reg[4:0] A;
reg[4:0] B;
reg S;
wire[4:0] Y;

MUX2_5 myMUX(S, A, B, Y);

initial begin
A=13; B=27; S=0;  #10; 
if (Y !== A) begin
           $display("Error: Expected %d got %d for S=%d", A, Y, S); $stop;
end
S=1;  #10; 
if (Y !== B) begin
           $display("Error: Expected %d got %d for S=%d", B, Y, S); $stop;
end

$display("All tests passed.");
end

endmodule