#!/bin/sh

git config --global user.email ${GIT_EMAIL} 
git config --global user.name ${GIT_USERNAME}

## 如果在应用商店里直接安装，则会报错。所以只能自己下载添加。
## https://github.com/cdr/code-server/issues/2393#issuecomment-737647448
if [[ "$(ls /home/coder/extension | grep ms-vscode | wc -l)" -eq 0 ]]; then
  curl -L -O https://github.com/microsoft/vscode-cpptools/releases/download/1.1.3/cpptools-linux.vsix
  code-server --extensions-dir=/home/coder/extension --install-extension cpptools-linux.vsix
  rm cpptools-linux.vsix
fi

supervisord -c /etc/supervisor/supervisord.conf
