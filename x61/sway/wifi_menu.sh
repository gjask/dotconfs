#!/bin/bash

interface=$1; shift


netctl list | sed -e "/$interface/!d" -e 's/[ *]*//g' | dmenu "$@" | xargs -r sudo netctl switch-to
