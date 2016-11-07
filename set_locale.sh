#!/bin/bash

function install_locale(){
cat > /etc/sysconfig/i18n << 'EOF'
LANG="zh_CN.UTF-8"
SYSFONT="latarcyrheb-sun16"
EOF
source /etc/sysconfig/i18n
}


if locale -a | grep 'zh_CN' > /dev/null 2>&1
then
  clear;
  install_locale
  echo "locale have been changed to zh_CN."
  cat /etc/sysconfig/i18n
else
  echo "you have not installed chinese language support."
fi
