#!/bin/sh

# Read AUTH file efficiently
read -r BOT_TOKEN CHAT_ID < "/root/TELEXWRT/AUTH" || { echo "AUTH file error"; exit 1; }

# Optimized Telegram message sender
send_tg() {
    curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" \
        -d "chat_id=$CHAT_ID" \
        -d "text=$1" \
        -d "parse_mode=Markdown"
}

# Get system info efficiently
get_sys_info() {
    local hostname=$(uci -q get system.@system[0].hostname)
    local model=$(cat /proc/device-tree/model 2>/dev/null)
    local arch=$(uname -m)
    local fw_info=$(sed -n "s/DISTRIB_DESCRIPTION='\\(.*\\)'/\\1/p" /etc/openwrt_release)
    local platform=$(sed -n "s/DISTRIB_TARGET='\\(.*\\)'/\\1/p" /etc/openwrt_release)
    local kernel=$(uname -r)
    local datetime=$(date "+%d %b %Y | %I:%M %p")
    local uptime=$(awk '{printf $1}' /proc/uptime | cut -d. -f1 | awk '{printf "%dh %dm\n",$1/3600,$1%3600/60}')
    local temp=$(awk '{printf "%.1f°C", $1/1000}' /sys/class/thermal/thermal_zone0/temp 2>/dev/null)
    local load=$(awk '{printf "%.0f%%", $1 * 100}' /proc/loadavg)
    local cpu_usage=$(top -bn1 | grep "CPU:" | awk '{printf "%.1f%%", 100-$8}')

    cat << EOF
╔═══════❖═══════❖═══════╗
         𐌌Ꝋ𐌍𐌉𐌕Ꝋ𐌓𐌉𐌍Ᏽ 𐌁Ꝋ𐌕
╚═══════❖═══════❖═══════╝
➥ 𝙷𝚘𝚜𝚝𝚗𝚊𝚖𝚎: $hostname
➥ 𝙼𝚘𝚍𝚎𝚕: $model
➥ 𝙰𝚛𝚜𝚒𝚝𝚎𝚔𝚝𝚞𝚛: $arch
➥ 𝙵𝚒𝚛𝚖𝚠𝚊𝚛𝚎: $fw_info
➥ 𝙿𝚕𝚊𝚝𝚏𝚘𝚛𝚖: $platform
➥ 𝙺𝚎𝚛𝚗𝚎𝚕: $kernel
➥ 𝙳𝚊𝚝𝚎: $datetime
➥ 𝚄𝚙𝚝𝚒𝚖𝚎: $uptime
➥ 𝚃𝚎𝚖𝚙: $temp
➥ 𝙻𝚘𝚊𝚍: $load
➥ 𝙲𝙿𝚄: $cpu_usage
▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱
        𝙏𝙀𝙇𝙀𝙓𝙒𝙍𝙏 2025
╚═══════❖═══════❖═══════╝
EOF
}

# Main execution
send_tg "$(get_sys_info)"
