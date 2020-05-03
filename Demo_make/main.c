// M111 - TP10_PROG-PROC
// Programme de test du composant M111_point

#include <stdio.h>
#include <stdlib.h>
#include "M111_point.h"

int main()
{
    printf("Hellu world!\n");

    lePoint pointA, pointB;

    pointA =lePointCreation(10,20, 'A');
    pointB =lePointCreation(100,200, 'B');

    lePointAfficher(pointA);
    lePointAfficher(pointB);
    return 0;
}
