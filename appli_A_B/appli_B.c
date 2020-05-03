/// BppliB.C
#include "fichier_B1.h"
#include "fichier_B2.h"
#include "fichier_B3.h"
#include "fichier_A3.h"

int main()
{
    int x, y;
    structB1 B1 = structB1Creation (x, y);
    structB2 B2 = structB2Creation (x, y);
    structB3 B3 = structB3Creation (x, y);
    structA3 A3 = structA3Creation (x, y);

    structB1Afficher (B1);
    structB2Afficher (B2);
    structB3Afficher (B3);
    structA3Afficher (A3);
    return 0;
}
