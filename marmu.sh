
#MYANMAR banner maker by MarMu
#python3

RD='\e[1;31m'
GR='\e[1;32m'
YL='\e[1;33m'
BL='\e[1;34m'
PP='\e[1;35m'
LBL='\e[1;36m'
GY='\e[1;30m'
WH='\e[1;37m'

clear
figlet start | lolcat
#pkg installation
pkg install ruby -y
pkg install python -y
pkg install figlet -y
gem install lolcat

cd $HOME
cd MarMu

echo
clear
figlet We Love | lolcat
figlet -f big MYANMAR | lolcat

echo -e ""
echo -e $GR " Enter Your Name : "
read name

echo -e "clear" >clear.txt
echo -e "figlet "$name" | lolcat" >name.txt
echo "PS1='\$ '" >mark.txt

rm -rf /data/data/com.termux/files/usr/etc/bash.bashrc
rm -rf /data/data/com.termux/files/usr/etc/zshrc

touch bash.bashrc

cp bash.bashrc /data/data/com.termux/files/usr/etc/
echo -e $RD"Enter Tool Password"
read pass
if [ $pass -eq 1234 ]
then
        cat "clear.txt" >>/data/data/com.termux/files/usr/etc/bash.bashrc

        cat "banner.txt" >>/data/data/com.termux/files/usr/etc/bash.bashrc

        cat "name.txt" >>/data/data/com.termux/files/usr/etc/bash.bashrc

        cat "mark.txt" >>/data/data/com.termux/files/usr/etc/bash.bashrc
        cd $HOME
        git clone https://github.com/adi1090x/termux-style
        cd termux-style
        chmod +x *
        bash install
        termux-style
        termux-style
        C
        5
        echo -e $GR "The Colour Themes Have Been Set.."

else
        echo -e $RD"Invalid Password!"
fi

rm -rf clear.txt
rm -rf name.txt
rm -rf mark.txt
rm -rf bash.bashrc
rm -rf termux-style

cd
cd ..
cd usr
cd etc

rm -rf zshrc

touch zshrc

cat bash.bashrc >>/data/data/com.termux/files/usr/etc/zshrc

if [ $pass -eq 1234 ]
then
        figlet Done !| lolcat
        echo -e $GR "Now it's OK..."
        echo -e $GR "please restart the termux application or start a new session"
else
        echo -e $RD "Unable to setup because of the wrong credentials"
fi

echo -e $GR "Theme Myanmar v 1.1 by MarMu"

cd $HOME
rm -rf termux-style
sleep 2
exit
