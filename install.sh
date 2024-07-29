#!/bin/bash
root_path=$(dirname "$(readlink -f "$0")")
fonts_dir_name="chinese"
sudo cp -r "$root_path/$fonts_dir_name" /usr/share/fonts/
cd "/usr/share/fonts/$fonts_dir_name"
sudo mkfontscale
sudo mkfontdir
fc-cache
