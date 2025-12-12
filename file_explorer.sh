#!/data/data/com.termux/files/usr/bin/bash
echo "Welcome To Hari's Bash Scripts" |boxes -d bear |lolcat
echo "========================================================================"
figlet -f slant FILE EXPLORER |lolcat
echo "                                                   © Coded By Hari With ♡"|lolcat
echo "========================================================================="
#functions
#1.makedir
makedir(){
    echo "Enter Name For The New Directory:"
    read dirname
    mkdir $dirname
    if [[ -d $dirname ]];
    then
        echo "Directory $dirname created succesfully"
    else
        echo "some error occured directory not created"
        fi
    menu
    
}
listall(){
    ls -la |lolcat
    
   read -p "Back To Menu? y or n:" back
    if [[ $back == y || $back == Y ]];then
        menu
    else cowsay "mooo.... exiting..."
         sleep 2
         exit
         fi
}
disk(){
    echo -e "\e[1;32mYour Disk Usage And Available Free Memory\e[0m"
    df -h |lolcat
    read -p "Back To Menu? y or n:" back
    if [[ $back == y || $back == Y ]];then
	menu
    else cowsay "mooo.... exiting..."
	 sleep 2
	 exit
	 fi
}
finfo(){
    echo "This feature provides a simple discription about the content of the given file"
    read -p "Enter file name (with extension):" fname
    file $fname |lolcat
    read -p "Back To Menu? y or n:" back
    if [[ $back == y || $back == Y ]];then
        menu
    else cowsay "mooo.... exiting..."
         sleep 2
         exit
         fi
}

#main function
menu(){
echo "YOUR FILES:"
 ls |lolcat

echo -e "\e[1;32mSelect An Option:\e[0m"
echo "
1:list All Files In detail
2:Make a New Directory
3:Copy Files
4:Move Files
5:Backup Files
6:Show Disk Usage
7:file content
" |boxes -d stone|lolcat
read -p "Enter The Corresponding Number:" num
case $num in
    1) listall;;
    2) makedir ;;
    3) copy ;;
    4) move ;;
    5) backup ;;
    6) disk ;;
    7) finfo ;;
    *) echo "Enter A Valid Number" |1lolcat
    
    esac
}
menu
