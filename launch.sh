#!/bin/bash

set -x

cd /data

if ! [[ "$EULA" = "false" ]] || grep -i true eula.txt; then
	echo "eula=true" > eula.txt
else
	echo "You must accept the EULA by adding EULA=true to the container environment settings."
	exit 9
fi

# If the server properties is missing it's likely a new installation and we need to copy the files from the /server directory to setup a new server
if ! [[ -f server.properties ]]; then
	cp -rf /server/* /data/
fi

# Download Iskall's pre-generated world if the LEVEL="Iskall-world" and 
# the ./Iskall-world directory does not already exist
if [[ "$LEVEL" = "Iskall-world" ]] && ! [[ -d "./Iskall-world" ]]; then
	ISKALL_GOOGLE_DRIVE_URL="https://shorturl.at/ehvLX"
	ISKALL_WORLD_ZIP="Vault-Hunters-15k-vanilla_pregen.zip"

	# Do we already have the zip file?
	if ! [[ -f ${ISKALL_WORLD_ZIP} ]]; then
		# Nope. Let's get it.
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
	fi

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
if [[ -n "$LEVELSEED" ]]; then
    sed -i "/level-seed\s*=/ c level-seed=$LEVELSEED" server.properties
fi
if [[ -n "$GAMEMODE" ]]; then
    sed -i "/gamemode\s*=/ c gamemode=$GAMEMODE" server.properties
fi
if [[ -n "$DIFFICULTY" ]]; then
    sed -i "/difficulty\s*=/ c difficulty=$DIFFICULTY" server.properties
fi

if [[ -n "$OPS" ]]; then
    echo $OPS | awk -v RS=, '{print}' >> ops.txt
fi

# On every start, update the Java command line options
{
	echo "# WARNING: AUTO-GENERATED"
	echo "# WARNING: Use the container environment variable JVM_OPTS"
	echo "$JVM_OPTS"
} > user_jvm_args.txt

# Call the Vault Hunters start script
./start.sh
