
module adderTest;
  //six inputs jo humne diye hy 
  reg [2:0] dA;
  reg [2:0] dB;
  //here y is the Sum vector and Co is the cout of the entire system of 3 bit adder
  wire [2:0] dY;
  wire dCo;
  
  initial 
    begin
      //5 test cases which include 2 where we generate a carry
      dA=3'b001;dB=3'b000;
      #10 dA=3'b001;dB=3'b011;
      #10 dA=3'b111;dB=3'b100;
      #10 dA=3'b001;dB=3'b101;
      #10 dA=3'b011;dB=3'b110;
      #10 dA=3'b000;dB=3'b000;
    end
  
  //we initialize the threeBitAdder module here
  threebitadder t1(.Co(dCo),.Y(dY),.A(dA),.B(dB));
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1,adderTest);
      
      $monitor("Time=%0d, A=%3b, B=%3b, Y=%3b, Cout=%1b\n", $time, dA, dB, dY, dCo);
    end
endmodule
