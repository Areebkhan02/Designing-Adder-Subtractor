
module threebitadder(A,B,Y,Co);
  //This is the input that we are taking it is in the vector form, now what we will do is manipulate this input by A[0] B[0] by vector addition
  input [2:0] A;
  input [2:0] B;
  // These are the wires jisme output araha hy Sum and Carry for each instance called 
  wire A1, A2, A3, A4, A5, A6;
  //The output basically two mey divided hua wa hy ek 3 bit output y and dosra Cout 
  output [2:0] Y;
  output Co;
  
  //we call the full adder three times as we are adding 3 bits
  full_adder a1(.S(A1), .Co(A2), .A(A[0]), .B(B[0]), .C(1'b0));
  full_adder a2(.S(A3), .Co(A4), .A(A[1]), .B(B[1]), .C(A2));
  full_adder a3(.S(A5), .Co(A6), .A(A[2]), .B(B[2]), .C(A4));
  
  assign Y[0] = A1;
  assign Y[1] = A3;
  assign Y[2] = A5;
  assign Co = A6;
endmodule
