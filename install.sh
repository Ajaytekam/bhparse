#!/bin/bash 

GREEN='\033[0;32m'
YELLOW='\033[0;33m'
END='\033[0m'

echo "${YELLOW}[+]${GREEN} bhparse installer...${END}" 
mkdir -p ~/tools 
cp bhparse.py ~/tools  
pushd ~/tools 
chmod +x bhparse.py 
# addiing aliases into bashrc file 
echo "alias bhparse='~/tools/bhparse.py'" >> ~/.bashrc   
echo "complete -W \"\\\$(ls | egrep '*.xml' --color=never)\" bhparse" >> ~/.bashrc  
echo "${YELLOW}[+]${GREEN} Installation complete${END}" 
