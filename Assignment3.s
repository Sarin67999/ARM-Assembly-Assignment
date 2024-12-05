.global _start



_start:

    MOV R0, #10           // Put the number 10 in R0
    MOV R1, #20           // Put the number 20 in R1
    MOV R5, #15           // Put the number 15 in R5 
    
    CMP R0, R1            // Compare R0 and R1
    BGT greater           // If R0 is bigger than R1, go to "greater"
    BLT lesser            // If R0 is smaller than R1, go to "lesser"
    BEQ equal             // If R0 is equal to R1, go to "equal"



greater:

    LSL R5, R5, #2        // Multiply R5 by 4 (shift left means multiply)
    B terminate           // Go to the end



lesser:

    LSR R5, R5, #1        // Divide R5 by 2 (shift right means divide)
    B terminate           // Go to the end



equal:

    ROR R5, R5, #1        // Rotate the bits of R5 to the right by 1
    B terminate           // Go to the end



terminate:

    MOV R7, #1            // Say we are done (R7 = 1 means exit)
    SVC #0                // Exit the program
