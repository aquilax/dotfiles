FROM ubuntu:jammy

RUN apt-get update 

RUN apt-get install -y git vim curl

COPY . ./dotfiles

RUN ./dotfiles/install.sh

