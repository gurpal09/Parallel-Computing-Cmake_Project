#include <stdio.h>
#include "parameter.h"
#include "io.h"

void writeOutput(REAL *RESTRICT phi)
{
    INT   i, j;
    FILE *output;
    output = fopen("wave.dat", "w");

    for (j = 0; j < NY; j++) {
        for (i = 0; i < NX; i++) {
            fprintf(output, "%f\n", phi[IC]);
        }
    }
    fclose(output);
}

void print2Display(REAL *phi)
{
    INT i, j;

    for (j = JSTART; j < JEND; j++) {
        for (i = ISTART; i < IEND; i++) {
            printf("%12.8f", phi[IC]);
        }
        printf("\n\n");
    }
}
