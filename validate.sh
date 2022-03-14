
# 5.16.12 Kernel version
echo "deb http://deb.debian.org/debian/ sid main" | sudo tee -a /etc/apt/sources.list

menu () {
     menu () {
      echo "1. yes"
      echo "2. no"
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

