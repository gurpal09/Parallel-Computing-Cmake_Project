#include "parameter.h"
#include "createMesh.h"

void meshGrid(REAL *RESTRICT x, REAL *RESTRICT y)
{
    INT  i, j;
    REAL a;

    for (j = 0; j < NY; j++) {
        a = dx * ((REAL) j);
        for (i = 0; i < NX; i++) {
            x[IC] = dx * ((REAL) i);
            y[IC] = a;
        }
    }
}
