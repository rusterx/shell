#!/bin/bash

cat > ~/.inputrc << 'EOF'
"\e[A": history-search-backward
"\e[B": history-search-forward
set show-all-if-ambiguous on
set completion-ignore-case on
"\C-k": kill-whole-line
EOF

source ~/.inputrc
clear
echo 'history tool has been installed, if not work you may reboot your pc.'
