
 #!/bin/bash
 # Version avec 'ls' et 'read'

 
 ls -l | grep '^-' | { somme=0 ; while read m1 m2 m3 m4 taille m6
 do
  let somme=somme+taille
  echo "... Mise au point " $i $taille $somme >&2
 done
 echo $somme
 }

