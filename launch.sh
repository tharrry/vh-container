#!/bin/bash

set -x

cd /data

if ! [[ "$EULA" = "false" ]] || grep -i true eula.txt; then
	echo "eula=true" > eula.txt
else
	echo "You must accept the EULA by adding EULA=true to the container environment settings."
	exit 9
fi

# To keep the docker image as small as possible the minecraft server 1.16.5 jar file is downloaded on first boot
if ! [[ -f minecraft_server.1.16.5.jar ]]; then
	# download missing minecraft jar
	URL="https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar"

	if command -v wget &> /dev/null; then
		echo "DEBUG: (wget) Downloading ${URL}"
		wget -O minecraft_server.1.16.5.jar "${URL}"
	elif command -v curl &> /dev/null; then
		echo "DEBUG: (curl) Downloading ${URL}"
		curl -o minecraft_server.1.16.5.jar "${URL}"
	else
		echo "Neither wget or curl were found on your system. Please install one and try again"
		exit 1
	fi
fi

# If the forge jar is missing it's likely a new installation and we need to copy the files from the /server directory to setup a new server
if ! [[ -f forge-1.16.5-36.2.23.jar ]]; then
# 	rm -fr config/ defaultconfigs/ libraries/ mods/ scripts/ forge-*.jar server.properties
	cp /server/* /data/
#	rm -rf /server
fi

# Download Iskall's pre-generated world if the LEVEL="Iskall" and the ./Iskall directory does not already exist
if [[ "$LEVEL" = "Iskall-world" ]] && ![ -d "./Iskall-world" ]; then
	ISKALL_GOOGLE_DRIVE_URL="https://shorturl.at/ehvLX"
	ISKALL_WORLD_ZIP="Vault-Hunters-15k-vanilla_pregen.zip"
	if command -v wget &> /dev/null; then
		echo "DEBUG: (wget) Downloading 'https://drive.google.com/u/0/uc?id=1aMymaF_oEJFiG7F2N1ojA9rLdfRdZNuJ&export=download&confirm=t'"
		 wget \
		 --no-check-certificate \
		 'https://drive.google.com/u/0/uc?id=1aMymaF_oEJFiG7F2N1ojA9rLdfRdZNuJ&export=download&confirm=t' \
		 -O "${ISKALL_WORLD_ZIP}"
	else
		echo "ERROR: curl was not found on your system to download the Iskall pre-gen world. Please file an issue on github:/wotupfoo/minecraft-container/tree/vault-hunters."
		exit 1
	fi

	echo "INFO: Downloaded ${ISKALL_WORLD_ZIP} from Iskall's Google Drive"
	echo "INFO: Making the Iskall-world directory"
	mkdir Iskall-world
	if command -v unzip &> /dev/null; then
		echo "INFO: UNZIPPING the world into ./Iskall-world"
		unzip "${ISKALL_WORLD_ZIP}" -d Iskall-world
	else
		echo "ERROR: UNZIP not found to extract the downloaded world"
	fi
	echo "INFO: Successfully installed the Iskall pre-generated world"
fi

if [[ -n "$MOTD" ]]; then
    sed -i "/motd\s*=/ c motd=$MOTD" server.properties
fi
if [[ -n "$LEVEL" ]]; then
    sed -i "/level-name\s*=/ c level-name=$LEVEL" server.properties
fi
if [[ -n "$LEVELTYPE" ]]; then
    sed -i "/level-type\s*=/ c level-type=$LEVELTYPE" server.properties
fi
if [[ -n "$DIFFICULTY" ]]; then
    sed -i "/difficulty\s*=/ c difficulty=$DIFFICULTY" server.properties
fi

if [[ -n "$OPS" ]]; then
    echo $OPS | awk -v RS=, '{print}' >> ops.txt
fi

# Download the Log4J Java Logger configuration file for parsing Minecraft logging.
if ! [[ -f log4j2_112-116.xml ]]; then
	echo "INFO: LOG4J Minecraft configuration file not found. Trying to download it."
	if command -v curl &> /dev/null; then
		curl -o log4j2_112-116.xml https://launcher.mojang.com/v1/objects/02937d122c86ce73319ef9975b58896fc1b491d1/log4j2_112-116.xml
	fi
	else
		echo "INFO: LOG4J Minecraft configuration file found.
fi

# Run the JAVA command line to launch the server skipping the Log4J Java Logger configuration file if it's not downloaded
if ! [[ -f log4j2_112-116.xml ]]; then
	echo "INFO: Starting Minecraft Java server without the LOG4J configuration file"
	java $JAVA_FLAGS $JVM_OPTS -jar forge-1.16.5-36.2.23.jar
else
	echo "INFO: Starting Minecraft Java server with the LOG4J configuration file"
	java $JAVA_FLAGS $JVM_OPTS -Dlog4j.configurationFile=log4j2_112-116.xml -jar forge-1.16.5-36.2.23.jar
fi