`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:23:58 01/22/2022 
// Design Name: 
// Module Name:    D_ff 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module D_ff(D, clk, Q);

	input D;
	input clk;
	output reg Q;
	
	always@(posedge clk)
	begin
		Q <= D;
	end


endmodule
