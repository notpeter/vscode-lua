#!/usr/bin/env bash

set -e

bold=$(tput bold)
normal=$(tput sgr0)

# MacOS has an old bash which doesn't support 'echo -e'
echo_color() {
    printf "$1\n" "$1"
}

black='\e[0;30m'
red='\e[0;31m'
green='\e[0;32m'
cyan='\e[0;36m'

echo_color "${red}${bold}Building VS Code Extension Client..."

echo_color "${cyan}${bold}Compiling TypeScript...${black}${normal}"
cd client
npm i
npm run build

echo_color "${green}${bold}Building Addon Manager WebVue...${black}${normal}"
cd webvue
npm i
npm run build

echo_color "${green}${bold}Build complete!${black}${normal}"
