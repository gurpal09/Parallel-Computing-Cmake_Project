#include <math.h>
#include "parameter.h"
#include "initialize.h"

void initWave(REAL *RESTRICT u, REAL *RESTRICT uold, REAL *RESTRICT x, REAL *RESTRICT y)
{
    INT i, j;
    for (j = 1; j < NY - 1; j++) {
        for (i = 1; i < NX - 1; i++) {
            u[IC] = 0.1f * (4.0f * x[IC] - x[IC] * x[IC]) * (2.0f * y[IC] - y[IC] * y[IC]);
            // u[IC] =  x[IC] * ( PI-x[IC] ) * y[IC] * ( PI-y[IC] );
            // u[ij] = fabs( cos( x[ij] - 3.0*y[ij] ) );
        }
    }
    for (j = 1; j < NY - 1; j++) {
        for (i = 1; i < NX - 1; i++) {
            uold[IC] = u[IC] + 0.5f * FACTOR * (u[IP1] + u[IM1] + u[JP1] + u[JM1] - 4.0f * u[IC]);
        }
    }
}
