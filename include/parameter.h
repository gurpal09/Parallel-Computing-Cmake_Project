#ifndef PARAMETER_H
#define PARAMETER_H

#define NX 512 /* includes boundary points on both end */
#define NY 256 /* includes boundary points on both end */
#define LX 4.0f /* length of the domain in x-direction  */
#define LY 2.0f /* length of the domain in x-direction  */
#define dx (REAL)(LX / ((REAL)(NX)))
#define cSqrd 5.0f
#define dt (REAL)(0.1f * dx / sqrt(cSqrd))
#define FACTOR (cSqrd * (dt * dt) / (dx * dx))

#define ISTART 65     /* mesh zone to print values to the screen */
#define IEND ISTART + 5   /* mesh zone to print values to the screen */
#define JSTART 115     /* mesh zone to print values to the screen */
#define JEND JSTART + 5  /* mesh zone to print values to the screen */

#define IC (i + j * NX)        /* (i,j)   */
#define IM1 (i + j * NX - 1)   /* (i-1,j) */
#define IP1 (i + j * NX + 1)   /* (i+1,j) */
#define JM1 (i + (j - 1) * NX) /* (i,j-1) */
#define JP1 (i + (j + 1) * NX) /* (i,j+1) */

#ifndef RESTRICT
#define RESTRICT
#endif

#ifndef SINGLE
typedef double REAL;
typedef int    INT;
#define PI 3.14159265358979323846
#else
typedef float REAL;
typedef int   INT;
#define PI 3.1415927f
#endif

#endif
