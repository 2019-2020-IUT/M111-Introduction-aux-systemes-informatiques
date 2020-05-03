/// appliA.C
#include "fichier_A1.h"
#include "fichier_A2.h"
#include "fichier_A3.h"

int main()
{
    int x, y;
    structA1 A1 = structA1Creation (x, y);


    structA2 A2 = structA2Creation (x, y);
    

    structA3 A3 = structA3Creation (x, y);
    structA1Afficher (A1);
    structA2Afficher (A2);
    structA3Afficher (A3);
    return 0;
}
