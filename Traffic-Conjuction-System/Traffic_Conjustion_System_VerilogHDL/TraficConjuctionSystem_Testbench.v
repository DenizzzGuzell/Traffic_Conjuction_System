`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:46:28 01/23/2022
// Design Name:   TrafficConjuctionSystem
// Module Name:   C:/f/Traffic_Conjustion_System_VerilogHDL/TraficConjuctionSystem_Testbench.v
// Project Name:  Traffic_Conjustion_System_VerilogHDL
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TrafficConjuctionSystem
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TraficConjuctionSystem_Testbench;

	// Inputs
	reg clock;
	reg reset;
	reg Button0;
	reg Button1;
	reg Button2;
	reg Button3;
	reg V0;
	reg V1;
	reg V2;
	reg V3;

	// Outputs
	wire R0;
	wire A0;
	wire G0;
	wire R1;
	wire A1;
	wire G1;
	wire R2;
	wire A2;
	wire G2;
	wire R3;
	wire A3;
	wire G3;
	wire PCR0;
	wire PCG0;
	wire PCR1;
	wire PCG1;
	wire PCR2;
	wire PCG2;
	wire PCR3;
	wire PCG3;
	wire Alarm0;
	wire Alarm1;
	wire Alarm2;
	wire Alarm3;
	wire VL0;
	wire VL1;
	wire VL2;
	wire VL3;

	// Instantiate the Unit Under Test (UUT)
	TrafficConjuctionSystem uut (
		.clock(clock), 
		.reset(reset), 
		.Button0(Button0), 
		.Button1(Button1), 
		.Button2(Button2), 
		.Button3(Button3), 
		.V0(V0), 
		.V1(V1), 
		.V2(V2), 
		.V3(V3), 
		.R0(R0), 
		.A0(A0), 
		.G0(G0), 
		.R1(R1), 
		.A1(A1), 
		.G1(G1), 
		.R2(R2), 
		.A2(A2), 
		.G2(G2), 
		.R3(R3), 
		.A3(A3), 
		.G3(G3), 
		.PCR0(PCR0), 
		.PCG0(PCG0), 
		.PCR1(PCR1), 
		.PCG1(PCG1), 
		.PCR2(PCR2), 
		.PCG2(PCG2), 
		.PCR3(PCR3), 
		.PCG3(PCG3), 
		.Alarm0(Alarm0), 
		.Alarm1(Alarm1), 
		.Alarm2(Alarm2), 
		.Alarm3(Alarm3), 
		.VL0(VL0), 
		.VL1(VL1), 
		.VL2(VL2), 
		.VL3(VL3)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 1;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 1;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 0;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 1;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 0;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 1;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 0;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 1;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 0;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 1;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 0;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 1;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 0;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 1;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 0;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 1;
		reset = 0;
		Button0 = 1;
		Button1 = 1;
		Button2 = 1;
		Button3 = 1;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 0;
		reset = 0;
		Button0 = 1;
		Button1 = 1;
		Button2 = 1;
		Button3 = 1;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 1;
		reset = 0;
		Button0 = 1;
		Button1 = 1;
		Button2 = 1;
		Button3 = 1;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 0;
		reset = 0;
		Button0 = 1;
		Button1 = 1;
		Button2 = 1;
		Button3 = 1;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 1;
		reset = 0;
		Button0 = 1;
		Button1 = 1;
		Button2 = 1;
		Button3 = 1;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 0;
		reset = 0;
		Button0 = 1;
		Button1 = 1;
		Button2 = 1;
		Button3 = 1;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 1;
		reset = 0;
		Button0 = 1;
		Button1 = 1;
		Button2 = 1;
		Button3 = 1;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 0;
		reset = 0;
		Button0 = 1;
		Button1 = 1;
		Button2 = 1;
		Button3 = 1;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 1;
		reset = 0;
		Button0 = 1;
		Button1 = 1;
		Button2 = 1;
		Button3 = 1;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 0;
		reset = 0;
		Button0 = 1;
		Button1 = 1;
		Button2 = 1;
		Button3 = 1;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 1;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 1;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 0;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 0;
		V1 = 1;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 1;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 0;
		V1 = 0;
		V2 = 1;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 0;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 1;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 1;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 0;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 1;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 0;
		V1 = 1;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 0;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here// Initialize Inputs
		clock = 1;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 0;
		V1 = 0;
		V2 = 1;
		V3 = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here// Initialize Inputs
		clock = 0;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 0;
		V1 = 0;
		V2 = 1;
		V3 = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here// Initialize Inputs
		clock = 1;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 1;
		V1 = 1;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 0;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 0;
		Button3 = 0;
		V0 = 1;
		V1 = 1;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 1;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 1;
		Button3 = 1;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 0;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 1;
		Button3 = 1;
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 1;
		reset = 0;
		Button0 = 1;
		Button1 = 1;
		Button2 = 0;
		Button3 = 0;
		V0 = 0;
		V1 = 0;
		V2 = 1;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 0;
		reset = 0;
		Button0 = 1;
		Button1 = 1;
		Button2 = 0;
		Button3 = 0;
		V0 = 0;
		V1 = 0;
		V2 = 1;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 1;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 1;
		Button3 = 1;
		V0 = 0;
		V1 = 1;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 0;
		reset = 0;
		Button0 = 0;
		Button1 = 0;
		Button2 = 1;
		Button3 = 1;
		V0 = 0;
		V1 = 1;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 1;
		reset = 0;
		Button0 = 1;
		Button1 = 1;
		Button2 = 0;
		Button3 = 0;
		V0 = 1;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 0;
		reset = 0;
		Button0 = 1;
		Button1 = 1;
		Button2 = 0;
		Button3 = 0;
		V0 = 1;
		V1 = 0;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 1;
		reset = 0;
		Button0 = 1;
		Button1 = 1;
		Button2 = 1;
		Button3 = 1;
		V0 = 1;
		V1 = 1;
		V2 = 1;
		V3 = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 0;
		reset = 0;
		Button0 = 0;
		Button1 = 1;
		Button2 = 1;
		Button3 = 0;
		V0 = 0;
		V1 = 1;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		clock = 1;
		reset = 0;
		Button0 = 0;
		Button1 = 1;
		Button2 = 1;
		Button3 = 0;
		V0 = 0;
		V1 = 1;
		V2 = 0;
		V3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

