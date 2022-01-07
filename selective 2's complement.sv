module complement_no1(B,C,O);
  //we have taken here 1 3bit input and 1 1bit input that will tell us whether to do addition or subtraction
  input O;
  input [2:0] B;
  output [2:0] C;
  
  //equations from the truth table min terms
  assign C[2] = ((~O)&B[2])|(O&(~B[2])&B[0])|(O&(~B[2])&B[1])|(B[2]&(~B[1])&(~B[0]));
  assign C[1] = ((~O)&B[1])|(O&(~B[1])&B[0])|(B[1]&(~B[0]));
  assign C[0] = B[0];
endmodule
