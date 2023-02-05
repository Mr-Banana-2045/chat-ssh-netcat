echo -e "\033[93m _1_\033[94m netcat"
echo -e "\033[93m _2_\033[94m ssh"
echo -e "\033[93m"
read -p " Enter number > " moz
if [ $moz == '1' ]; then
    echo -e "\033[93m _1_\033[94m Send File"
    echo -e "\033[93m _2_\033[94m Send Message"
    echo -e "\033[93m"
    read -p " Enter number > " net
    if [ $net == '2' ]; then
    echo -e "\033[93m"
    read -p "Port > " po
    nc -lvp $po
    elif [ $net == '1' ]; then
    echo -e "\033[93m"
    read -p " Enter Port > " to
    read -p " Enter File > " ti
    nc -lvp $to > $ti
    else
        echo -e "\033[91m Error"
    fi
elif [ $moz == '2' ]; then
    echo -e "\033[93m _1_\033[94m Send Message"
    echo -e "\033[91m Attention"
    echo -e "\033[92m Download ssh tool"
    echo -e "\033[00m cd download"
    echo -e "wget -c https://github.com/shazom/ssh-chat/releases/sownload/v1.6/ssh-chat-linux_amd64.tgz"
    echo -e "tar -xcf ssh-chat-linux_amd64.tgz"
    echo -e "cd ssh-chat"
    echo -e "./ssh-chat"
    echo -e "ssh-chat"
    echo -e "\033[92m Copy port"
    echo -e "\033[00m ssh name@ip"
    echo -e "\033[92mthe and"
    echo -e "\033[93m"
    read -p " Enter IP > " ip
    read -p " Enter Port > " poo
    ssh $ip -p $poo
else
    echo -e "\033[91m Error"
fi