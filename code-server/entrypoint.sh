#!/bin/sh

git config --global user.email ${GIT_EMAIL} 
git config --global user.name ${GIT_USERNAME}

supervisord -c /etc/supervisor/supervisord.conf
