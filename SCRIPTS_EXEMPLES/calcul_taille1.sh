 
 #!/bin/bash
 # Version avec 'stat'

 somme=0
 for i in *
  do 
  if [ -f $i ]
   then 
    taille=$(stat -c%s $i)
    let somme=somme+taille
    echo "... Mise au point " $i $taille $somme >&2
  fi
 done
 echo $somme

