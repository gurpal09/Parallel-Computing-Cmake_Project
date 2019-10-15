#include <stdio.h>
#include <stdlib.h>
//#include <math.h>
#include "parameter.h"
#include "initialize.h"
#include "io.h"
#include "createMesh.h"
#include "solveWave.h"
#include "validate.h"
#include "timer.h"

int main(INT argc, char *argv[])
{
    if (argc != 2) {
        perror("Command-line usage: executableName <# time steps>");
        exit(1);
    }

    INT nTimeSteps = atoi(argv[1]);

    REAL *x = calloc(NX * NY, sizeof *x);
    REAL *y = calloc(NX * NY, sizeof *y);

    REAL *unew  = calloc(NX * NY, sizeof *unew);
    REAL *u     = calloc(NX * NY, sizeof *u);
    REAL *uold  = calloc(NX * NY, sizeof *uold);
    REAL *exact = calloc(NX * NY, sizeof *exact);
    REAL *tmp;

    meshGrid(x, y);
    initWave(u, uold, x, y);

    StartTimer();

    for (INT n = 1; n <= nTimeSteps ; n++) {
        solveWave(unew, u, uold);

        tmp  = uold;
        uold = u;
        u    = unew;
        unew = tmp;
    }

    double elapsedTime = GetTimer();
    // obtain the analytical solution

    analyticalSoln(nTimeSteps, exact, x, y);

    printf("|||||||----ANALYTICAL SOLUTION----|||||||||\n");
    print2Display(exact);

    printf("|||||||----NUMERICAL SOLUTION----|||||||||\n");
    print2Display(u);
    printf("||||||||||||||||||||||||||||||\n");
    printf("Time elapsed = %f s\n", elapsedTime);

    //   writeOutput( u );

    free(unew);
    free(u);
    free(uold);
    free(exact);
    free(x);
    free(y);

    return EXIT_SUCCESS;
}
