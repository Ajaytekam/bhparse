#!/bin/bash 

GREEN='\033[0;32m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
END='\033[0m'

echo -e "${YELLOW}[+]${GREEN} bhparse installer...${END}" 
mkdir -p ~/tools 
cp bhparse.py ~/tools  
cd ~/tools 
chmod +x bhparse.py 
# addiing aliases into bashrc file 
echo "alias bhparse='~/tools/bhparse.py'" >> ~/.bashrc   
echo "complete -W \"\\\$(ls | egrep '*.xml' --color=never)\" bhparse" >> ~/.bashrc  
echo -e "\n${YELLOW}[*]${GREEN} Installation Completed!${END}"
echo -e "${YELLOW}[!]${GREEN} Run Command ${CYAN}'source ~/.bashrc'${END}"
