#!/system/bin/sh
#TheStanaTools-Main Menu
#Author:Luk4Stana
#Function:Fix Permissions
fix_permissions() {
    echo "Enter the file or directory path:"
    read target
    if [ -e "$target" ]; then
        chmod 644 "$target"
        chown 0:0 "$target"
        echo "Permissions set to 644 and owner to root:root for $target"
    else
        echo "Error: Path does not exist."
    fi
}
#Collect Logs
collect_logs() {
    echo "Collecting system logs..."
    mkdir -p /sdcard/StanaLogs
    logcat -d > /sdcard/StanaLogs/logcat.txt
    dmesg > /sdcard/StanaLogs/dmesg.txt
    echo "Logs saved to /sdcard/StanaLogs/"
}


#Menu
while true; do
    echo "--- TheStanaTools ---"
    echo "1) Fix Permissions"
    echo "2) Collect System Logs"
    echo "3) Run Debloater"
    echo "4) Exit"
    read -p "Select an option: " choice
    case $choice in
        1) fix_permissions ;;
        2) collect_logs ;;
        3) sh ./debloater.sh ;;
        4) exit ;;
        *) echo "Invalid choice, try again." ;;
    esac
done