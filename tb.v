module crt1_tb;
reg a,b,c;
wire y;
crt1 inst(y,a,b,c);
initial begin
    a=0;b=0;c=0;#10 
    a=0;b=0;c=1;#10 
    a=0;b=1;c=0;#10 
    a=0;b=1;c=1;#10
    a=1;b=0;c=0;#10
    a=1;b=0;c=1;#10 
    a=1;b=1;c=0;#10
    a=1;b=1;c=1;#10
    $finish;
end
initial begin
    $monitor("Time=%0t,a=%b,b=%b,c=%b,y=%b",$time,a,b,c,y);
    $dumpfile("crt1.vcd");
    $dumpvars();
end
endmodule