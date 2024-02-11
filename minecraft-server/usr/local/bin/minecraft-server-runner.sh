#! /bin/bash

source /etc/minecraft-server/minecraft-server.conf

# set -x

XD=$1

if [[ -z ${XD} ]]
 then echo "use -d or -s"

elif [[ ${XD} == "-d" ]]
  then 	
      echo "java version for minecraft server is ${JAVAVERSION}"
      echo "path for minecraft server is ${PATH}"
      echo "version for minecraft server is ${SERVER}"
      echo "memory minimum for minecraft server is ${MEMORYXMS}" 
      echo "memory maximum for minecraft server is ${MEMORYXMX}" 
      echo "options for minecraft server is ${OPTIONS}"
      echo
      echo "run looks like this:"
      echo "/usr/lib64/jvm/${JAVAVERSION}/bin/java -Xmx${MEMORYXMX} -Xms${MEMORYXMS} -jar ${SERVER} ${OPTIONS}"

elif [[ ${XD} == "-s" ]]
  then 	
      echo "run the server"
      cd ${PATH}
      /usr/lib64/jvm/${JAVAVERSION}/bin/java -Xmx${MEMORYXMX} -Xms${MEMORYXMS} -jar ${SERVER} ${OPTIONS}

else

      echo "you give a bad parameters"
      exit 1

fi


