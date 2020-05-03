#! /bin/bash

# traite_arguments.sh : exemple de script pour traiter les arguments de la ligne de commande
# - avec passage d'arguments (simples ou couple) dans un ordre quelconque
# - avec initialisation des variables associées aux parametres pour traitement ulterieur
# - Affichage des valeurs des variables concernees

# Arguments possibles :
# -x1 -x2 --var_x2
# -a1 valeur -argument1 valeur -a2 valeur --argument2 

# Exemple :
#  traite_arguments.sh -a1 val1 --argument1 val11 -x1 -a2 val2 -x2  # nb : redondance 

varX1=0 ; varX2=0
variable1=NON ; variable2=NON
echo Nombre d arguments = $#
while   [[   $#   -gt   0   ]] ; do
   case $1 in
	"-x1" ) varX1=1
                shift ;;
	"-x2" | "--var_x2" ) varX2=1
                shift 
		;;
	"-d" | "--argument1" )
	        if [[ -n $2 ]]
	          then  
		if [ -d $2 ] 
		variable1=$2 
	        else
		  echo "$0: Syntaxe : $1 <valeur>" ; exit 2
	        fi    
                shift ; shift ;;
	"-a2" | "--argument2" )
	        if [[ -n $2 ]]
	          then  variable2=$2 
	        else
		  echo "$0: Syntaxe : $1 <valeur>"  ; exit 2
	        fi              
                shift ; shift ;;
	  *   ) echo "$0: Syntaxe : $1 = parametre illegal"  ; exit 2 
    esac

done



