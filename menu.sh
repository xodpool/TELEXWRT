#!/bin/bash

# Asosiasi antara judul dan URL
declare -A SCRIPTS
SCRIPTS["system"]="https://raw.githubusercontent.com/xodpool/TELEXWRT/main/plugins/tools/menu/system.sh"
SCRIPTS["speedtest"]="https://raw.githubusercontent.com/xodpool/TELEXWRT/main/plugins/tools/menu/speedtest.sh"
SCRIPTS["ping"]="https://raw.githubusercontent.com/xodpool/TELEXWRT/main/plugins/tools/menu/ping.sh"
SCRIPTS["vnstat"]="https://raw.githubusercontent.com/xodpool/TELEXWRT/main/plugins/tools/menu/vnstat.sh"
SCRIPTS["restart"]="https://raw.githubusercontent.com/xodpool/TELEXWRT/main/plugins/tools/menu/restart.sh"
SCRIPTS["reboot"]="https://raw.githubusercontent.com/xodpool/TELEXWRT/main/plugins/tools/menu/reboot.sh"
SCRIPTS["shutdown"]="https://raw.githubusercontent.com/xodpool/TELEXWRT/main/plugins/tools/menu/shutdown.sh"
SCRIPTS["ocstart"]="https://raw.githubusercontent.com/xodpool/TELEXWRT/main/plugins/tools/menu/ocstart.sh"
SCRIPTS["ocrestart"]="https://raw.githubusercontent.com/xodpool/TELEXWRT/main/plugins/tools/menu/ocrestart.sh"
SCRIPTS["ocstop"]="https://raw.githubusercontent.com/xodpool/TELEXWRT/main/plugins/tools/menu/ocstop.sh"
SCRIPTS["clear"]="https://raw.githubusercontent.com/xodpool/TELEXWRT/main/plugins/tools/menu/clear.sh"
SCRIPTS["opkgupdate"]="https://raw.githubusercontent.com/xodpool/TELEXWRT/main/plugins/tools/menu/opkgupdate.sh"
SCRIPTS["info-modem"]="https://raw.githubusercontent.com/xodpool/TELEXWRT/main/plugins/tools/menu/infoModem.sh"
SCRIPTS["restart-modem"]="https://raw.githubusercontent.com/xodpool/TELEXWRT/main/plugins/tools/menu/restartModem.sh"
# Tambahkan judul dan URL lain sesuai kebutuhan

# Memeriksa apakah argumen yang diberikan adalah judul yang valid
if [ "$#" -ne 1 ] || [ -z "${SCRIPTS[$1]}" ]; then
    echo "Penggunaan: bash s.sh [judul script]"
    exit 1
fi

# Mengunduh dan menjalankan skrip dari URL yang sesuai dengan judul
selected_url="${SCRIPTS[$1]}"
script=$(curl -s "$selected_url" | tr -d '\r')
bash -c "$script"
