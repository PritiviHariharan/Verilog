module crt1(y,a,b,c);
output y;
input a,b,c;
wire w1,w2,w3;
or g1(w1,a,b);
or g2(w2,b,c);
not g3(w3,c);
xor g4(y,w1,w2,w3);
endmodule