#include <math.h>
#include "parameter.h"
#include "solveWave.h"

void solveWave(REAL *RESTRICT unew, const REAL *RESTRICT u, const REAL *RESTRICT uold)
{
    INT i, j;

    for (j = 1; j < NY - 1; j++) {
        for (i = 1; i < NX - 1; i++) {
            unew[IC]
            = 2.0f * u[IC] - uold[IC] + FACTOR * (u[IP1] + u[IM1] + u[JP1] + u[JM1] - 4.0f * u[IC]);
        }
    }
}
