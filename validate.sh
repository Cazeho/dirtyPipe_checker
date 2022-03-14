
# 5.16.12 Kernel version
echo "deb http://deb.debian.org/debian/ sid main" | sudo tee -a /etc/apt/sources.list

menu () {
      cat << EOF
          1. yes
          2. no
      EOF
      echo -n 'enter: '
      read -r sel

      case $sel in
              2) ;;
              1) echo "Hostname: $HOSTNAME"; uptime;;
              *)
                 echo "Invalid entry." >&1
                 exit 1
      esac
}






   
menu
