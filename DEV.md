# Developing notes
<!-- MarkdownTOC autolink="true" indent="  " markdown_preview="github" -->

- [Description](#description)
- [Requirements](#requirements)
- [Setup Steps](#steps)
- [Development](#development)
- [Publishing](#publish)
    - [GitHub](#github)
    - [DockerHub](#dockerhub)
<!-- /MarkdownTOC -->

## Description

As a `n00b` to `github` & `docker` here are my notes on how I made the minecraft server in a container.

## Requirements

1. [github](http://github.com) account
1. [GitHub Desktop](https://desktop.github.com/) (sorta optional but makes it SO much easier)
to work
3. [docker](http://docker.com) account
4. [Docker Desktop](https://www.docker.com/products/docker-desktop/) - needed by VSCode for the docker extension
5. [VSCode](https://code.visualstudio.com/)
- In VSCode install these extensions  
[Docker (ms-azuretools.vscode-docker)](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)  
[~~Github Pull Requests and Issues (GitHub)~~](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-pull-request-github)  
    - Optional - I don't use the github integration. I use GitHub Desktop.

## Setup Steps
1. Start Docker Desktop and login
2. Clone the [`wotupfoo/minecraft-container`](https://github.com/wotupfoo/minecraft-container) repo using the Github Desktop app
     - I have mine cloned to `f:\github.com\wotupfoo\minecraft-containers`
3. Using GitHub Desktop, choose the game branch you want to develop in (eg vault-hunters) as '`main`' is not used
4. Using GitHub Desktop, Open the repo in VSCode  
    - Markdown preview - if you're editing *.md files you can preview with `Ctrl-Shift-V`  
    - Markdown cheetsheet - https://www.markdownguide.org/cheat-sheet/  

## Development
Do the necessary editing and file operations you need to do for a new release
For example,
1. download the newest Vault-Hunters server release from CurseForge
2. expand the zip file
3. replace the ./server directory with the new version
4. merge any server.properties changes you want to differ from their default
5. change the `Dockerfile` so that the right java base container is used for the release
    - Minecraft 1.16 uses Java 8 LTS
        - Dockerfile: `FROM openjdk:8u312-jdk-buster`
    - Minecraft 1.18 uses Java 17 LTS
        - Dockerfile: `FROM openjdk:17-jdk-buster` (I chose this release version)
6. fix the `launch.sh` as necessary to launch their `/server/start.sh` that will end up being copied to `/data/start.sh`

## Publishing
When you're ready to publish you want to do two things:  
### Publish to GitHub  
1. Upload it to `github.com` and then on github `tag` it with a `release` name for easy search.  
    #### In **VSCode**
    1. For this, go to the version control mode (on the left menu)  
    2. Commit the changes with a comment. For final releases I put the version as the comment.  
    #### **In GitHub Desktop**
    3. In GitHub Desktop PUSH the local repo to `github.com\wotupfoo\...`  
    #### On **GitHub.com**
    1. Creating a Release (click on "Release" button on right side of website)
        - Create a new Release making a Tag for it at the same time follow the syntax `v1.0.0` (eg. `v1.13.9`)  
        In the Comment section I put "Vault-Hunters v1.13.9"
### Publish to DockerHub  
2. Create the docker image and push it to `dockerhub`