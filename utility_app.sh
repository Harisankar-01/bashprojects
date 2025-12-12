
#greetings...
echo "WELCOME TO HARI'S BASH SCRIPTS"|boxes -d bear |lolcat
#user greeting function

greetings(){
    echo " ================================================" |lolcat
    figlet                   Welcome $1 |lolcat 
    echo " ================================================" |lolcat	
}
#multiply feature

multiply(){
    #Multiplication table using bash script
    echo -e "\e[1;32m========================\e[0m"
            echo -e "\e[1;32mMULTIPLICATION TABLE\e[0m"
    echo -e "\e[1;32m========================\e[0m"
    
read -p "Enter A Number" num #taking user input				
#printing first n numbers						
read -p "Enter Count:" n						
echo -e "\e[5;32mCalculating...\e[0m"					
sleep 3									
echo -e "\e[5;32mcreating table...\e[0m"				
sleep 2									
echo "Here is your multiplication table of $num :" | lolcat		
echo -e "\e[1;32m=====================\e[0m"				
i=1									
while ((i <= n))							
do									
									
    echo -e "\e[1;32m||   $i X $num =$((i*num))||\e[0m" #printing table	
    ((i++))								
									
done									
echo -e "\e[1;32m=====================\e[0m"				
}
#makedirectory function
makedir(){								
    echo -e "\e[1;32mEnter A Name:\e[0m"				
    read dirname							
    mkdir $dirname							
    echo "Directory $dirname  Created Successfully"|lolcat		
    read -p "To remove this directory enter y or n?" remove		
    if [ $remove == "y" ]						
    then								
	rmdir $dirname							
	echo "removed $dirname"|lolcat					
									
    else cowsay $dirname|lolcat						
fi									
									
}
#systeminformation functiom
sysinfo(){								
    echo "========================================"| lolcat		
             figlet -f slant Sysinfo|lolcat				
    echo "========================================"| lolcat
    echo -e "\e[1;32mCurrent Date And Time :\e[0m"|date
    echo -e "\e[1;32mSystem information\e[0m"
    echo "User:"
    whoami
    echo "uptime:" |lolcat
    uptime -s |cut -d " " -f 2
    echo "cpu load average:" |lolcat
      uptime| cut -d ":" -f 5 
    echo "free space:" |lolcat
    free -h
    echo "Cpu information" |lolcat
    lscpu
    echo  "Number of cpu cores:"  |lolcat
    nproc
    
    echo -e "\e[1;32mNetwork Information :\e[0m"
    curl https://ipinfo.io |boxes -d stone|lolcat
    echo -e "\e[1;32m  OS Information :\e[0m"
hostnamectl
    
}
#simple calculator function

calc(){
    echo "========================================"| lolcat
             figlet -f slant Calculator|lolcat
    echo "========================================"| lolcat
    read -p "Enter Formula:" formula
    result=$(($formula))
    echo $result |lolcat
    

   } 
#--------------------------------------------------------------
#login and greeting page
user_name="Hari"
password=58585
read -p "Enter your Name:" name					       
echo "Enter Your Password:"
read -s pass
if [[ $name == $user_name && $pass == $password ]];
   
then									
    greetings $name							
else								       
    cowsay "Wrong Password Good Bye :)" |lolcat
    exit
fi

#array of available features
utility=(" 1).Mutiplication_Table" " 2).Make_a_directory" " 3).simple_calculator" " 4).display_systeminfo")

#displaying feature list
echo -e "\e[1;32mAVAILABLE FEATURES:\e[0m"

echo "====================" |lolcat
for util in ${utility[@]}
do
    
           echo -e "\e[1;32m$util\e[0m"
    
done
echo "====================="| lolcat


echo -e "\e[1;32mSelect The Number To Use The Utility Feature.
More Features Are Comming Soon\e[0m"
#functions calling section
read -p "CHOOSE FEATURE" fnum
case $fnum in
    1) multiply ;;
    2) makedir ;;
    3) calc ;;
    4) sysinfo ;;
    *) echo -e "\e[1;31mNot Found 404\e[0m" ;;
esac


<<eof
---------------------------------------------------------------------------
•This is a simple terminal app with some simple features.
•©Created by Hari with love.
•This project was created at the time of learning bash script.This is my first bash project.
•github :github.com/Harisankar-01
•instagram:harisankar_01
•created on 10/july/2025
----------------------------------------------------------------------------
eof
