#include <stdio.h>
#include <math.h>
#include "parameter.h"
#include "validate.h"

void analyticalSoln(INT nTimeSteps, REAL *RESTRICT uAnalytical, REAL *RESTRICT XX,
                    REAL *RESTRICT YY)
{
    INT i, j, m, n, limit;
    limit = 51;

    REAL x, y, t, factor, sum;

    t = (REAL) dt * nTimeSteps;
    printf("ntimesteps=  %d\n", nTimeSteps);

    for (j = JSTART; j < JEND; j++) {
        for (i = ISTART; i < IEND; i++) {
            x   = XX[IC];
            y   = YY[IC];
            sum = 0.0;
            for (m = 1; m < limit; m = m + 2) {
                for (n = 1; n < limit; n = n + 2) {
                    factor = (1.0f / (REAL)(m * m * m * n * n * n));
                    sum    = sum
                          + factor
                            * cos(t * 0.25f * sqrt(cSqrd) * PI * sqrt((REAL) m * m + 4 * n * n))
                            * sin((REAL) m * PI * x * 0.25f) * sin((REAL) n * PI * y * 0.50f);
                }
            }
            uAnalytical[IC] = sum * 0.426050f;
        }
    }
}
