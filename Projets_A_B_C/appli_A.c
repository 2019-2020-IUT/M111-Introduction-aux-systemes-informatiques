/// appliA.C

int main()
{
    int x, y;
    structA1 A1 = structA1Creation (x, y);
    structA1Afficher (structA1 A2);

    structA1 A2 = structA2Creation (x, y);
    structA2Afficher (A2);

    structA1 A3 = structA3Creation ( x, y);
    structA3Afficher (A3);
    return 0;
}
