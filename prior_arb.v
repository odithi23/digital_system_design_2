`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2026 10:21:37 AM
// Design Name: 
// Module Name: prior_arb
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


module prior_arb(
    input      [3:0] req,
    output reg [3:0] grant

);

    always @(*) begin
        if (req[0] == 1'b1)
            grant = 4'b0001;
        else if (req[1] == 1'b1)
            grant = 4'b0010;
        else if (req[2] == 1'b1)
            grant = 4'b0100;
        else if (req[3] == 1'b1)
            grant = 4'b1000;
        else
            grant = 4'b0000;
    end
    endmodule
