// M111 - TP10_PROG-PROC
// Composant M111_point
// Implementation

#include <stdio.h>
#include "M111_point.h"

lePoint lePointCreation (int x, int y, char nom) {
    lePoint localPoint;
    localPoint.champX = x;
    localPoint.champY = y;
    localPoint.champN = nom;
    return localPoint;
}

void lePointAfficher (lePoint unPoint){
    printf ("[ %c (%3d, %3d ) ]\n", unPoint.champN,
            unPoint.champX, unPoint.champY);

}
