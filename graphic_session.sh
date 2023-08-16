#!/bin/zsh
# you must had fpath=(~/.zsh_functions/gwin $fpath) in your .zshrc
[ ! -d ~/.zsh_functions ] ||  mkdir -p ~/.zsh_functions
WIN1ADDR=$(vagrant winrm -s cmd -c ipconfig win-1|grep  'IPv4 Address'|grep 121|awk -F: '/192\.168\.121/  { print $2 }')
WIN2ADDR=$(vagrant winrm -s cmd -c ipconfig win-2|grep  'IPv4 Address'|grep 121|awk -F: '/192\.168\.121/  { print $2 }')
cat <<EOF > ~/.zsh_functions/gwin1
gwin1() {xfreerdp  /u:vagrant /p:vagrant /v:${WIN1ADDR//[[:space:]]/}:3389  /cert-ignore /dynamic-resolution;}
EOF
cat <<EOF > ~/.zsh_functions/gwin2
gwin2() {xfreerdp  /u:vagrant /p:vagrant /v:${WIN2ADDR//[[:space:]]/}:3389  /cert-ignore /dynamic-resolution;}
EOF
cat <<EOF > ~/.zsh_functions/gwin1s
gwin1s() {xfreerdp  /u:vagrant /p:vagrant /v:${WIN1ADDR//[[:space:]]/}:3389  /cert-ignore  /smart-sizing:1368x968;}
EOF
cat <<EOF > ~/.zsh_functions/gwin2s
gwin2s() {xfreerdp  /u:vagrant /p:vagrant /v:${WIN2ADDR//[[:space:]]/}:3389  /cert-ignore  /smart-sizing:1368x968;}
EOF
autoload -U gwin1 gwin2 gwin1s gwin2s
