// This code defines a Verilog module named "wireTest" with 3 inputs: A, B, and C. 
module wireTest (A,B,C);

    // The input "A" is declared here
    input A;

    // The output "B" is declared here
    output B;
    
    // The output "C" is declared here
    output C;

    // The value of "B" is assigned to "A"
    assign B = A;

    // The value of "C" is assigned to the inverse of "A"
    assign C = !A;

    // End of module definition
endmodule