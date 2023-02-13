// The timescale definition sets the time unit for the simulation 
`timescale 1 ns / 1 ns

// Including the module definition from the "wireTest.v" file 
`include "wireTest.v"

// This code defines a Verilog module named "wireTest_tb" 
module wireTest_tb;

// "A" is declared as a register 
reg A;

// "B" and "C" are declared as wires 
wire B;
wire C;

// An instance of the "wireTest" module is created 
wireTest uut(A,B,C);

// The initial block is used to set up and run the simulation 
initial begin
    // Specifying a VCD dump file for simulation waveform analysis 
    $dumpfile("wiretest_tb_vcd");
    // Dumping variables for simulation waveform analysis 
    $dumpvars(0, wireTest_tb);
    // Setting the value of A to 0 
    A = 0;
    // Sleeping for 20 ns 
    #20; 

    // Setting the value of A to 1 
    A = 1;
    // Sleeping for 20 ns 
    #20; 

    // Setting the value of A to 0 
    A = 0;
    // Sleeping for 20 ns 
    #20; 

    // Setting the value of A to 1 
    A = 1;
    // Sleeping for 20 ns 
    #20; 

    // Displaying a message indicating that the wire test is complete 
    $display("Wire test complete!");
    
end

// End of module definition
endmodule