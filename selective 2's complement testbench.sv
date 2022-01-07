module complementtest;
  reg dO;
  reg [2:0] dB;
  wire [2:0] dC;
  
  initial
    begin
      dO=1'b0;dB=3'b000; 
      #10 dO=1'b0;dB=3'b001;
      #10 dO=1'b0;dB=3'b010;
      #10 dO=1'b0;dB=3'b011;
      #10 dO=1'b0;dB=3'b100;
      #10 dO=1'b0;dB=3'b101;
      #10 dO=1'b0;dB=3'b110;
      #10 dO=1'b0;dB=3'b111;
      #10 dO=1'b1;dB=3'b000;
      #10 dO=1'b1;dB=3'b001;
      #10 dO=1'b1;dB=3'b010;
      #10 dO=1'b1;dB=3'b011;
      #10 dO=1'b1;dB=3'b100;
      #10 dO=1'b1;dB=3'b101;
      #10 dO=1'b1;dB=3'b110;
      #10 dO=1'b1;dB=3'b111;
      #10 dO=1'b0;dB=3'b000;
    end
  
  complement_no1 t2(.C(dC), .B(dB), .O(dO));
  
  initial
    begin
      $dumpfile("complementresults.vcd");
      $dumpvars(1,complementtest);
      
      $monitor("Time=%0d, O=%b, B=%3b, C=%3b\n", $time, dO, dB, dC);
      
    end
endmodule
