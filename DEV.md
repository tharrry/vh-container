# Developing notes
<!-- MarkdownTOC autolink="true" indent="  " markdown_preview="github" -->

- [Description](#description)
- [Requirements](#requirements)
- [Setup Steps](#steps)
- [Publishing](#publish)
    - [GitHub](#github)
    - [DockerHub](#dockerhub)
<!-- /MarkdownTOC -->

## Description

As a `n00b` to `github` & `docker` here are my notes on how I made the minecraft server in a container.

## Requirements

1. [github](http://github.com) account
2. [docker](http://docker.com) account
3. [GitHub Desktop](https://desktop.github.com/) (sorta optional but makes it SO much easier)
4. [VSCode](https://code.visualstudio.com/)
- In VSCode install these extensions  
[Docker (ms-azuretools.vscode-docker)](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)  
[~~Github Pull Requests and Issues (GitHub)~~](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-pull-request-github)  
    - Optional - I don't use the github integration. I use GitHub Desktop.

## Setup Steps
- First clone the repo using the Github Desktop app - `wotupfoo/minecraft-containers`  
     - I have mine cloned to `f:\github.com\wotupfoo\minecraft-containers`

- Using GitHub Desktop, choose the game branch you want to develop in (eg vault-hunters) as 'main' is not used

- Using GitHub Desktop, Open the repo in VSCode  
    - Markdown preview - if you're editing *.md files you can preview with `Ctrl-Shift-V`  
    - Markdown cheetsheet - https://www.markdownguide.org/cheat-sheet/  

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