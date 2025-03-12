#!/bin/sh

# READ AUTH
if [ -f "/root/TELEXWRT/AUTH" ]; then
    IFS=$'\n' read -d '' -r -a lines < "/root/TELEXWRT/AUTH"
    if [ "${#lines[@]}" -ge 2 ]; then
        BOT_TOKEN="${lines[0]}"
        CHAT_ID="${lines[1]}"
    else
        echo "Berkas auth harus memiliki setidaknya 2 baris (token dan chat ID Anda)."
        exit 1
    fi
else
    echo "Berkas auth tidak ditemukan."
    exit 1
fi

# Fungsi untuk memeriksa koneksi internet dan mendapatkan waktu ping
check_internet() {
    if ping -c 1 8.8.8.8 | grep 'time=' > /dev/null 2>&1; then
        # Mengambil waktu ping
        PING_TIME=$(ping -c 1 8.8.8.8 | grep 'time=' | awk -F 'time=' '{print $2}' | awk '{print $1}')
        echo "Koneksi internet tersedia. Waktu ping: $PING_TIME ms"
        return 0
    else
        echo "Tidak ada koneksi internet."
        return 1
    fi
}

# Fungsi untuk mendapatkan IP publik
get_public_ip() {
    PUBLIC_IP=$(curl -s ifconfig.me)
    echo "$PUBLIC_IP"
}

# Function to send a message to the Telegram bot
send_telegram_message() {
    curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" \
        -d "chat_id=$CHAT_ID" \
        -d "text=$1" \
        -d "parse_mode=Markdown"
}

# Periksa koneksi internet
if check_internet; then
    CONNECTION_STATUS="Koneksi internet tersedia. Waktu ping: $PING_TIME ms"
else
    CONNECTION_STATUS="Tidak ada koneksi internet."
fi

# Mendapatkan IP publik
PUBLIC_IP=$(get_public_ip)

# Generate the system status report
SYSTEM_REPORT="
╔═══❖══════❖══╗
     𐌌Ꝋ𐌍𐌉𐌕Ꝋ𐌓𐌉𐌍Ᏽ 𐌁Ꝋ𐌕    
╚═══❖══════❖══╝
 ➥ 𝙷𝚘𝚜𝚝𝚗𝚊𝚖𝚎 : $(uci get system.@system[0].hostname | tr -d '\0')
 ➥ 𝙼𝚘𝚍𝚎𝚕 : $(cat /proc/device-tree/model | tr -d '\0')
 ➥ 𝙰𝚝𝚒𝚗𝚎𝚝𝚞𝚛 : $(uname -m)
 ➥ 𝙵𝚒𝚛𝚖𝚠𝚊𝚏𝚎 : $(cat /etc/openwrt_release | grep DISTRIB_DESCRIPTION | cut -d "'" -f 2 | tr -d '\0')
 ➥ 𝙿𝚕𝚊𝚝𝚏𝚘𝚛𝚖 : $(cat /etc/openwrt_release | grep DISTRIB_TARGET | cut -d "'" -f 2 | tr -d '\0')
 ➥ 𝙺𝚎𝚛𝚗𝚎𝚕 : $(uname -r)
 ➥ 𝙳𝚊𝚝𝚎 : $(date +"%d %b %Y | %I:%M %p")
 ➥ 𝚄𝚙𝚝𝚒𝚖𝚎 : $(uptime | awk '{print $3,$4}' | sed 's/,.*//')
 ➥ 𝚃𝚎𝚖𝚙 : $(awk '{printf "%.2f°C\n", $1/1000}' /sys/class/thermal/thermal_zone0/temp)
 ➥ 𝙻𝚘𝚊𝚍 𝚊𝚟𝚎𝚛𝚊𝚐𝚎 : $(awk '{printf "%.0f%%", $1 * 100}' /proc/loadavg)
 ➥ 𝙲𝙿𝚄 𝚞𝚜𝚊𝚐𝚎 : $(mpstat 1 1 | tail -n 1 | awk '{printf "%.2f%%", 100 - $NF}')
 ➥ 𝙲𝚘𝚗𝚗𝚎𝚌𝚝𝚒𝚘𝚗 : $CONNECTION_STATUS
 ➥ 𝙸𝙿 𝙿𝚞𝚋𝚕𝚒𝚌 : $PUBLIC_IP
 ▰▱▰▱▰▱▰▱▰▱▰
      𝙏𝙀𝙇𝙀𝙓𝙒𝙍𝙏 2025
╚═══❖═════❖═══╝
"

# Send the system report to the Telegram bot
send_telegram_message "$SYSTEM_REPORT"
