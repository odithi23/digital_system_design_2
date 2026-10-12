`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2026 10:56:23 AM
// Design Name: 
// Module Name: bcd_counter
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


module bcd_counter(
    input            clk,
    input            rst_n,
    input            en,
    output reg [3:0] count,
    output reg       wrapped
);
    

    always @(posedge clk) begin
        if (!rst_n)begin
        
            count <= 4'd0;
            wrapped<=1'b0;
            end
        else if (en) begin
            if (count == 4'd9) begin
                count   <= 4'd0;
                wrapped <= 1'b1;
            end else
                count <= count + 4'd1;
        end
    end
 endmodule 