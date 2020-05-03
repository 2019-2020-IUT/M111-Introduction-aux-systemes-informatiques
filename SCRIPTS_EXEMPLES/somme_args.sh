 
 #!/bin/bash
 # M111 - TP9 - sommeargs.sh (prototype)
 # solution avec seq possible ... 

 if [[ $# -ne 2 ]] 
    then echo "Syntaxe : $0 nbre1 nombre2 # avec nbre1 <= nbre2" ; exit 2 ; fi 
 
 NB1=$1
 NB2=$2
 SOMME=0 
 while [[ $NB1 -le $NB2 ]]
   do
    let SOMME=SOMME+NB1
    let NB1++
   done
 echo $SOMME
