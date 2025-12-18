module crt2(y,a,b);
output y;
input a,b;
wire n1;
supply1 c;
supply0 d;
pmos t1(y,c,b);
pmos t2(y,c,a);
nmos t3(y,a,n1);
nmos t4(n1,b,d);
endmodule