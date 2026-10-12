`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2026 10:24:57 AM
// Design Name: 
// Module Name: tb
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


module tb();

    reg  [3:0] req;
    wire [3:0] grant;

    prior_arb dut (
        .req(req),
        .grant(grant)
    );

    integer i;

    initial begin
        req = 4'b0000;
        #10;

        for (i = 0; i < 16; i = i + 1) begin
            req = i;
            #10;
            $display("req=%b  grant=%b", req, grant);
        end

        $finish;
    end
endmodule
