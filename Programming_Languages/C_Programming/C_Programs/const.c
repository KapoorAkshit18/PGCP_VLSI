////tempelate

/**
 * @file main.c
 * @brief Short description of the program's purpose.
 * @author Akshit Kapoor
 * @date 2026-06-12
 */

/* --- Standard Library Includes --- */
#include <stdio.h>   /* For standard input/output functions (printf, scanf) */
#include <stdlib.h>  /* For memory management, allocation, and process control */
#include <stdbool.h> /* For standard boolean data types (true, false) */

/* --- Macro Definitions & Constants --- */
#define SUCCESS 0
#define FAILURE -1

/* --- Function Declarations (Prototypes) --- */
void initialize_program(void);
    
/**
 * @brief Application entry point.
 * @return 0 on success, non-zero error code on failure.
 */
int main(void) {
    /* 1. Initialization */
    initialize_program();

    /* 2. Main Logic Execution */
   // printf("Hello, World!\n");

    /* 3. Program Exit */
    return SUCCESS;
}

/* --- Function Definitions --- */
void initialize_program(void) {
    const int abc = 1234;/* Set up any required parameters or configs here */
     printf("Hello, World! const value is %i \n",abc);
}
