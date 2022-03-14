
# 5.16.12 Kernel version
echo "deb http://deb.debian.org/debian/ sid main" | sudo tee -a /etc/apt/sources.list

menu () {
   echo "Menu : Do you want update your kernel"
   case $selection in
  1 ) clear ; menu_option_one ; yes ;;
  2 ) clear ; menu_option_two ; no ;;
  * ) clear ; incorrect_selection ; press_enter ;;
esac
}






   
menu
