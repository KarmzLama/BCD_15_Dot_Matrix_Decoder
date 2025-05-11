`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2025 12:15:35 PM
// Design Name: 
// Module Name: hwfive
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


module hwfive(
    input [3:0] bcd,
    output reg [14:0] dots
    );
    
    always @(*) begin
        case (bcd)
            4'd0: dots = 15'b111_101_101_101_111; // pattern for 0
            4'd1: dots = 15'b010_110_010_010_011; // pattern for 1
            4'd2: dots = 15'b111_001_111_100_111; // pattern for 2
            4'd3: dots = 15'b111_001_111_001_111; // pattern for 3
            4'd4: dots = 15'b101_101_111_001_001; // pattern for 4
            4'd5: dots = 15'b111_100_111_001_111; // pattern for 5
            4'd6: dots = 15'b111_100_111_101_111; // pattern for 6
            4'd7: dots = 15'b111_001_001_001_001; // pattern for 7
            4'd8: dots = 15'b111_101_111_101_111; // pattern for 8
            4'd9: dots = 15'b111_101_111_001_111; // pattern for 9
            4'd5: dots = 15'b000_000_000_000_010; // pattern for period (10)
            4'd6: dots = 15'b000_010_111_010_000; // pattern for plus (11)
            4'd7: dots = 15'b000_000_111_000_000; // pattern for minus (12)
            4'd8: dots = 15'b000_101_010_101_000; // pattern for times (13)
            4'd9: dots = 15'b000_000_000_000_000; // pattern for center dot (14)
            4'd9: dots = 15'b000_000_000_000_111; // pattern for underscore (15)
            default: dots = 15'b000_000_000_000_000; // off for invalid BCD
        endcase
    end
endmodule
