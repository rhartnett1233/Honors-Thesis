module round_const( clk, rst, rc );
  input clk, rst;
  output reg [7:0] rc;
 
  always @(posedge clk or posedge rst)
  begin
      if(rst)
          rc <= 8'h 36;
      else
          case(rc)
              8'h 00: rc<= 8'h 01;
              8'h 01: rc<= 8'h 02;
              8'h 02: rc<= 8'h 04;
              8'h 04: rc<= 8'h 08;
              8'h 08: rc<= 8'h 10;
              8'h 10: rc<= 8'h 20;
              8'h 20: rc<= 8'h 40;
              8'h 40: rc<= 8'h 80;
              8'h 80: rc<= 8'h 1b;
              8'h 1b: rc<= 8'h 36;
              8'h 36: rc<= 8'h 00;
          endcase
  end
 
endmodule
 
module round_ctr( clk, rst, firstRnd, finalRnd );
    input clk, rst;
    output firstRnd, finalRnd;
 
    reg [10:0] rndCtr;
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            rndCtr <= 11'b 10000000000;
        else
            rndCtr <= {rndCtr[9:0],rndCtr[10]};
    end
    assign firstRnd = rndCtr[0];
    //might be 10 or 9 not sure yet
    assign finalRnd = rndCtr[10];
endmodule