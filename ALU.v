`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2026 09:56:06 AM
// Design Name: 
// Module Name: ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU(
    input      [3:0] a,
    input      [3:0] b,
    input      [1:0] op,
    output reg [4:0] y
);
    always @(*) begin
        case (op)
            2'b00:   y = {1'b0, a} + {1'b0, b};
            2'b01:   y = {1'b0, a} - {1'b0, b};
            2'b10:   y = {1'b0, a & b};
            default: y = {1'b0, a | b};
        endcase
    end
endmodule
   
