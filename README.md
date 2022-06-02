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

* /data mounted to a persistent disk
* Make sure that the EULA  is set to `true`

## Options

These environment variables can be set at run time to override their defaults.

* JVM_OPTS "-Xms2048m -Xmx6144m"
* MOTD "A Minecraft (Vault Hunters 1.12.3) Server Powered by Docker"
* LEVEL Vault-Hunters
* LEVELTYPE byg

## Adding Minecraft Operators

Set the enviroment variable `OPS` with a comma separated list of players.

example:
`OPS="OpPlayer1,OpPlayer2"`

## Original Source
Github: https://github.com/Ratomas/cave-factory
Docker: https://hub.docker.com/r/ratomas/cave-factory

## Forked Source
Github: https://github.com/Wotupfoo/minecraft-container
Docker: https://hub.docker.com/r/Wotupfoo/minecraft-container
