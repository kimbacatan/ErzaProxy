PURPLE="\e[1;35m"
ENDCOLOR="\e[0m"

clear
echo -e "${PURPLE}Installing Proxy...${ENDCOLOR}"
sleep 1
if [ -f "proxy" ]; then
    echo -e "${PURPLE}Deleting old proxy...${ENDCOLOR}"
    rm proxy
    sleep 1
    echo -e "${PURPLE}Updating proxy...${ENDCOLOR}"
fi
wget -q https://github.com/TekenCPS/TekenProxy/raw/main/proxy
sleep 1
echo -e "${PURPLE}Proxy Installed${ENDCOLOR}"
sleep 1
echo -e "${PURPLE}Executing Proxy...${ENDCOLOR}"
sleep 5
chmod +x proxy
./proxy
