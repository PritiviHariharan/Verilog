module dff_tb;
reg d,clk,rst;
wire q;
dff181225 inst(q,d,clk,rst);
initial begin
    d=0;clk=0;rst=0;#10
    d=0;clk=0;rst=1;#10
    d=0;clk=1;rst=0;#10
    d=0;clk=1;rst=1;#10
    d=1;clk=0;rst=0;#10
    d=1;clk=0;rst=1;#10
    d=1;clk=1;rst=0;#10
    d=1;clk=1;rst=1;
    $finish;
end
initial begin
    $monitor("Time=%0t,d=%b,clk=%b,rst=%b,q=%b",$time,d,clk,rst,q);
    $dumpfile("dff181225.vcd");
    $dumpvars();
end
endmodule