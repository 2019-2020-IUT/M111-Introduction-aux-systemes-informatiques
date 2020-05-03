 
 #!/bin/bash
 # M111 - TP9 - afficheargs.sh

 echo $*
 
 for i in $*
   do
    echo $i
   done

 for i
   do
    echo $i
   done

 while test  $# != 0 # ou bien [ ou bien [[
   do
    echo $1
    shift
   done
