`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: KFAU
// Engineer: Deniz Güzel
// 
// Create Date:    22:25:07 01/22/2022 
// Design Name: Programing Project Fall2021
// Module Name:    TrafficConjuctionSystem 
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
`include "D_ff.v"

module TrafficConjuctionSystem(clock,reset,Button0,Button1,Button2,Button3,V0,V1,V2,V3,
R0,A0,G0,R1,A1,G1,R2,A2,G2,R3,A3,G3,PCR0,PCG0,PCR1,PCG1,PCR2,PCG2,PCR3,PCG3,Alarm0,Alarm1,Alarm2,Alarm3,VL0,VL1,VL2,VL3);

	input clock,reset,Button0,Button1,Button2,Button3,V0,V1,V2,V3;
	output R0,A0,G0,R1,A1,G1,R2,A2,G2,R3,A3,G3,PCR0,PCG0,PCR1,PCG1,PCR2,PCG2,PCR3,PCG3,Alarm0,Alarm1,Alarm2,Alarm3,VL0,VL1,VL2,VL3;

	reg [11:0] present_state = 12'b110100100100;
	
	wire [11:0] next_state;
	
	D_ff D11(.D((present_state[11] ^ present_state[10])), 
				.clk(clock),  
				.Q(next_state[11]));
	
	D_ff D10(.D((present_state[1] & ~present_state[2]) | present_state[9]), 
				.clk(clock),  
				.Q(next_state[10]));
				
	D_ff D9(.D((present_state[11] & present_state[10])), 
				.clk(clock),  
				.Q(next_state[9]));
	
	D_ff D8(.D((present_state[11] ^ present_state[10])), 
				.clk(clock),  
				.Q(next_state[8]));
				
	D_ff D7(.D((present_state[10] & ~present_state[11]) | present_state[6]), 
				.clk(clock),  
				.Q(next_state[7]));
	
	D_ff D6(.D((present_state[8] & present_state[7])), 
				.clk(clock),  
				.Q(next_state[6]));
				
	D_ff D5(.D((present_state[11] ^ present_state[10])), 
				.clk(clock),  
				.Q(next_state[5]));
	
	D_ff D4(.D((present_state[7] & ~present_state[8]) | present_state[3]), 
				.clk(clock),  
				.Q(next_state[4]));
				
	D_ff D3(.D((present_state[5] & present_state[4])), 
				.clk(clock),  
				.Q(next_state[3]));
	
	D_ff D2(.D((present_state[11] ^ present_state[10])), 
				.clk(clock),  
				.Q(next_state[2]));
				
	D_ff D1(.D((present_state[4] & ~present_state[5]) | present_state[0]), 
				.clk(clock),  
				.Q(next_state[1]));
	
	D_ff D0(.D((present_state[1] & present_state[2])), 
				.clk(clock),  
				.Q(next_state[0]));
	
	always@(reset or next_state) begin
	
		if (reset) begin
			present_state <= 12'b110100100100;
		end
		
		else begin
			present_state <= next_state;
		end
		
	end
	assign VL0 = (~V0 & V1) | (~V0 & V3) | (~V0 & V2);
	assign VL1 = (~V1 & V0) | (~V1 & V3) | (~V1 & V2);
	assign VL2 = (~V2 & V1) | (~V2 & V3) | (~V2 & V0);
	assign VL3 = (~V3 & V1) | (~V3 & V0) | (~V3 & V2);
	assign R0 = present_state[11] | VL0;
	assign A0 = present_state[10] & ~VL0;
	assign G0 = present_state[9] & ~VL0;
	assign R1 = present_state[8] | VL0;
	assign A1 = present_state[7] & ~VL0;
	assign G1 = present_state[6] & ~VL0;
	assign R2 = present_state[5] | VL0;
	assign A2 = present_state[4] & ~VL0;
	assign G2 = present_state[3] & ~VL0;
	assign R3 = present_state[2] | VL0;
	assign A3 = present_state[1] & ~VL0;
	assign G3 = present_state[0] & ~VL0;
	assign PCR0 = ~G3;
	assign PCG0 = G3;
	assign PCR1 = ~G0;
	assign PCG1 = G0;
	assign PCR2 = ~G1;
	assign PCG2 = G1;
	assign PCR3 = ~G2;
	assign PCG3 = G2;
	assign Alarm0 = R0 & Button0;
	assign Alarm1 = R1 & Button1;
	assign Alarm2 = R2 & Button2;
	assign Alarm3 = R3 & Button3;
	
endmodule
