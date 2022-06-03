# [Vault Hunters]([https://vaulthunters.gg](https://www.curseforge.com/minecraft/modpacks/vault-hunters-official-modpack))
<!-- MarkdownTOC autolink="true" indent="  " markdown_preview="github" -->

- [Description](#description)
- [Requirements](#requirements)
- [Options](#options)
- [Adding Minecraft Operators](#adding-minecraft-operators)
- [Source](#source)

<!-- /MarkdownTOC -->

## Description


Docker Container for Vault Hunters Minecraft Modpack

The docker on first run will download the same version as tagged of Vault Hunters and install it.  This can take a while as the Forge installer can take a bit to complete.  You can watch the logs and it will eventually finish.

After the first run it will simply start the server.

## Requirements

- Make sure that the EULA  is set to `true`
- `/data` mounted to a persistent disk volume - otherwise your world will not be saved !!!
    - Examples:
        - Anonymous volume `-v :/data`
        - Labelled volume `-v vault-hunter-volume:/data`
        - Specific host directory `-v /home/vault-hunters:/data`
- Open up the default Minecraft network port to the host network so that you can connect to the server
    - Note that if you map the port to a different port number on the host the Minecraft Multiplayer user interface will not find the server on the local network
    - `-p 25565:25565`

## Using Iskall's pre-generated world
If you want the world to use Iskall's provided pre-generated world (5GB) where the immediate area is Vanilla minecraft and beyond that are the modded biomes, set the LEVEL to "Iskall-world" (see below) and it will automatically download and install it when the container first loads.
The pre-generated world was provided in the description of Iskall's Single Player Vault-Hunters YouTube series in Episode 2. `https://shorturl.at/ehvLX` (Google Drive link)

This is the default world, generated from scratch on first boot
> `LEVEL` vh-1.12.4-world

This is the Iskall pre-generated world and will be automatically downloaded and installed (5GB download space required + 5GB of extracted world)
> `LEVEL` Iskall-world

## Options

These environment variables can be set at run time to override their defaults.

Java virtual machine memory
> `JVM_OPTS` "-Xms2048m -Xmx6144m"

Minecraft server name
> `MOTD` "A Minecraft (Vault Hunters 1.12.4) Server Powered by Docker"

Minecraft World name (and what world is automatically started when the server starts)
> `LEVEL` vh-1.12.4-world

The Level Type - not used currently
> `LEVELTYPE`

The Difficulty of the World
> `DIFFICULTY` normal     [peaceful, easy, normal, hard]

## Adding Minecraft Operators

Set the enviroment variable `OPS` with a comma separated list of players.

example:
> `OPS="OpPlayer1,OpPlayer2"`

## Original Source
Github:
> https://github.com/Ratomas/cave-factory
Docker:
> https://hub.docker.com/r/ratomas/cave-factory

## Forked Source
> NOTE: Each modded minecraft server is in a dedicated fork
The main branch is a stale fork of the original cave-factory containerization by [Ratomas](https://github.com/Ratomas)

#### Vault Hunters Github:
> https://github.com/Wotupfoo/minecraft-container/tree/vault-hunters

#### Cave Factory Github: (not functional yet)
> https://github.com/Wotupfoo/minecraft-container/tree/cave-factory

## DockerHub image
Full URI
> *docker.io/wotupfoo/vault-hunters:1.12.4* 

Shorthand
> *wotupfoo/vault-hunters:1.12.4*

DockerHub webpage
> https://hub.docker.com/r/wotupfoo/vault-hunters/tags

