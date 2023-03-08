#!/usr/bin/env bash

install()
{
    sudo pacman -S "$@"
}

install_ur()
{
    paru -S --skipreview --nouseask --nocheck "$@"
}