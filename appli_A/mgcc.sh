#echo "|**********************************************************************|"
#echo "* Projet                      : TD11 - Script 1"
#echo "*"
#echo "* Programme                   : mgcc.sh"
#echo "*"
#echo "* Auteur                      : JunkJumper"
#echo "*"
#echo "* Date created                : 12-12-2018"
#echo "*"
#echo "* But                         : Apprendre pour le makefile"
#echo "*"
#echo "|**********************************************************************|"

varX1=0 ; varX2=0

leVerbose=NON
leInclude=NON
repertoire=.
echo Nombre d arguments = $#

if [[ $# > 4 ]]
   then
	echo "$0: Erreur, vous avez entré trop d'arguments" ; exit 2
else
	while   [[   $#   -gt   0   ]] ; do
	   case $1 in
		"-v" | "--verbose" )
			leVerbose=OUI
		        shift 
			;;
		"-i" | "--include" )
			leInclude=OUI
		        shift 
			;;
		"-d" | "--directory" )
			if [[ -n $2 ]]
			  then  
				if [ -d $2 ]
				   then
					repertoire=$2 
				else
					  echo "$0: Syntaxe : le répertoire $2 n'existe pas" ; exit 2
				fi
			else
				echo "$0: Syntaxe : $1 doit etre accompagné d'un répertoire valide"

			fi
		        shift ; shift ;;
			*   ) echo "$0: Syntaxe : $1 = parametre interdit"  ; exit 2 
	    esac

	done
fi

#ca c'est pour tester mtn va les enlever
echo $leVerbose
echo $leInclude
echo $repertoire
echo ""

cd $repertoire
for i in *.c
do
	echo "gcc -c $i"
done







cd /home/sj801446/Documents/M111/TP_11_bash_projet_make/appli_A/
