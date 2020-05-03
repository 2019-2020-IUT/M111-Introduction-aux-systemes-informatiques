// M111 - TP10_PROG-PROC
// Composant M111_point
// Header

typedef struct {
int champX;
int champY;
char champN;
}
lePoint;

lePoint lePointCreation (int x, int y, char nom);

void lePointAfficher (lePoint unPoint);
