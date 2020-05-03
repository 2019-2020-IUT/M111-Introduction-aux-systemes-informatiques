 
 #!/bin/bash - egaltilde.sh
 # M111 - TP11 - reconnaitre un mot commencant 
 # par un caractere particulier
 
 if [[  $# -le 1 ]] 
    then echo "Syntaxe : $0 caractere mot ..."
         exit 5  
 fi 
 
 LECAR=$1
 shift
 while  [[ ! $1 =~ $LECAR && -n $1 ]] 
 do
  LESMOTS="$LESMOTS $1"
  echo '  boucle ...'
  shift
 done 
 echo '  'LESMOTS=\'$LESMOTS\'
