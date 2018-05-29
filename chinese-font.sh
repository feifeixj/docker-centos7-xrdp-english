#!/bin/bash

yum -y install fontconfig
wget http://sourceforge.net/projects/wqy/files/wqy-microhei/0.2.0-beta/wqy-microhei-0.2.0-beta.tar.gz
tar -zvxf wqy-microhei-0.2.0-beta.tar.gz 
mkdir -p /usr/share/fonts/wenquanyi  
cp -av wqy-microhei /usr/share/fonts/wenquanyi/ 
cd /usr/share/fonts/wenquanyi/ 
mkfontscale 
mkfontdir 
fc-cache -fv
