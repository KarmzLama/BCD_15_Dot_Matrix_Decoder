`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2025 12:30:32 PM
// Design Name: 
// Module Name: dotbench
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


module dotbench();

reg [3:0] bcd;
    wire [14:0] dots;

    // Instantiate the design
    hwfive uut (
        .bcd(bcd),
        .dots(dots)
    );

    integer i;

    initial begin
         
        for (i = 0; i < 16; i = i + 1) begin
            bcd = i;
            #10;
           
        end
    end
endmodule
