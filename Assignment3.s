        .section .text         
        .global _start         
        
_start:
        // Step 1: Initialize R0 and R1 (Example values; these will be changed during grading)
        MOV R0, #10           // Load value 10 into R0
        MOV R1, #5            // Load value 5 into R1

        // Step 2: Initialize R5 with 15
        MOV R5, #15           // Load value 15 into R5

        // Step 3: Compare R0 and R1
        CMP R0, R1

        // Step 4: Perform operations based on the comparison
        BGT greater_than      // Branch if R0 > R1
        BLT less_than         // Branch if R0 < R1
        BEQ equal_to          // Branch if R0 == R1

greater_than:
        LSL R5, R5, #2        // Logical shift left by 2
        B terminate           // Jump to terminate

less_than:
        LSR R5, R5, #1        // Logical shift right by 1
        B terminate           // Jump to terminate

equal_to:
        ROR R5, R5, #1        // Rotate right by 1
        B terminate           // Jump to terminate

terminate:
        // Step 5: Terminate the program
        MOV R7, #1            // Exit syscall number for Linux
        SVC 0                 // Trigger system call
