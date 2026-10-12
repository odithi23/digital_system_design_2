`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2026 08:20:33 PM
// Design Name: 
// Module Name: bcd_tb
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


module bcd_tb(

    );
     reg clk, rst_n, en;
     wire   [3:0] count;
     wire       wrapped;
    bcd_counter dut (.clk(clk), .rst_n(rst_n), .en(en), .count(count), .wrapped(wrapped));

    initial clk = 0;
    always #5 clk = ~clk;

    integer i;
    initial begin
        rst_n = 0; en = 0;
        #100
        repeat (3) @(negedge clk);
        rst_n = 1; en = 1;
        for (i = 0; i < 26; i = i + 1) begin
            @(negedge clk);
            $display("cycle=%0d  count=%b  wrapped=%b", i, count, wrapped);
        end
        $finish;
    end
endmodule

