`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2026 10:41:33 AM
// Design Name: 
// Module Name: sync_pipe
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


module sync_pipe(
    input      clk,
    input      d,
    output reg q
);
    reg meta;

    always @(posedge clk)begin
        meta <= d;
        q <= meta;
    end
endmodule
