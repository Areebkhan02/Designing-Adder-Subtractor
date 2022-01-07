module addSubtract_testbench;
  reg [2:0] dA, dB;
  reg dO;
  wire dDP;
  wire [6:0] dS;
  
  initial
    begin
      dA=3'b011;dB=3'b100;dO=1'b0;
      #10 dA=3'b011;dB=3'b100;dO=1'b1;
      #10 dA=3'b111;dB=3'b111;dO=1'b0;
      #10 dA=3'b010;dB=3'b110;dO=1'b1;
  
      
    end
  
  addSubtract g1(.DP(dDP),.S(dS),.O(dO),.A(dA),.B(dB));
  
  initial
    begin
      $dumpfile("addSubtract.vcd");
      $dumpvars(1,addSubtract_testbench);
      
      $monitor("Time=%0d, A=%3b, B=%3b, O=%b, S=%7b, DP=%b\n", $time, dA, dB, dO, dS, dDP);
      
    end
endmodule
