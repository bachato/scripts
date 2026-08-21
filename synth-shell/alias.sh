#!/usr/bin/env bash

##  +-----------------------------------+-----------------------------------+
##  |                                                                       |
##  | Copyright (c) 2019-2026, Andres Gongora <mail@andresgongora.com>.     |
##  |                                                                       |
##  | This program is free software: you can redistribute it and/or modify  |
##  | it under the terms of the GNU General Public License as published by  |
##  | the Free Software Foundation, either version 3 of the License, or     |
##  | (at your option) any later version.                                   |
##  |                                                                       |
##  | This program is distributed in the hope that it will be useful,       |
##  | but WITHOUT ANY WARRANTY; without even the implied warranty of        |
##  | MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         |
##  | GNU General Public License for more details.                          |
##  |                                                                       |
##  | You should have received a copy of the GNU General Public License     |
##  | along with this program. If not, see <https://www.gnu.org/licenses/>.  |
##  |                                                                       |
##  +-----------------------------------------------------------------------+






##==============================================================================
##	SIMPLE COMMAND OPTIONS
##==============================================================================
alias grep='\grep --color=auto'
alias pacman='\pacman --color=auto'
alias tree='\tree --dirsfirst -C'
alias dmesg='\dmesg --color=auto --reltime --human --nopager --decode'
alias free='\free -mht'






##==============================================================================
##	HELPER FUNCTIONS
##==============================================================================

## take
## Create and change to a directory
#function take() { { [ -d $1 ] || mkdir -p $1; } && cd $1 ; }



## runbg
## Run command in the background and print all output once when done
## TODO: Do I want to run it in a separate thread and release the terminal?
##       Or do I just want to apply some niceness? Then, why not let it print
##       directly to the terminal?
#function runbg() {
#    local cmd=$@
#	local bgcmd="nice ${cmd}"
#    echo "Running in background: ${cmd}"
#	local exit_status=$($bgcmd)
#	echo "${exit_status}"
#}



##==============================================================================
##	TAKE = mkdir & cd
##==============================================================================
take() {
    mkdir -p -- "$1" &&
       cd -P -- "$1"
}



##==============================================================================
##	BETTER SUDO
##==============================================================================

alias sudo='\sudo '

if [ "$PS1" ]; then
	complete -cf sudo
fi




### EOF ###
