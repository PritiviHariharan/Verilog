module crt2_tb;
wire y;
reg a,b;
crt2 inst(y,a,b);
initial begin
    a=0;b=0;#10
    a=0;b=1;#10
    a=1;b=0;#10
    a=1;b=1;#10 
    $finish;
end
initial begin
    $monitor("Time=%0t,a=%b,b=%b,y=%b",$time,a,b,y);
    $dumpfile("crt2.vcd");
    $dumpvars();
end
endmodule