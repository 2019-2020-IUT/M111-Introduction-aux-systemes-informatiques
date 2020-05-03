
 #!/bin/bash
 # Version avec 'ls' et 'set'

 
 ls -l | grep '^-' | { somme=0; while read neutre ligne
 do
  set $ligne
  let somme=somme+$4
  echo "... Mise au point " $i $taille $somme >&2
 done
 echo $somme
 }

