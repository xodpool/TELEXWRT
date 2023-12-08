#!/bin/sh

# READ AUTH
if [ -f "/root/TELEXWRT/AUTH" ]; then
    IFS=$'\n' read -d '' -r -a lines < "/root/TELEXWRT/AUTH"
    if [ "${#lines[@]}" -ge 2 ]; then
        bot_token="${lines[0]}"
        CHAT_ID="${lines[1]}"
    else
        echo "Berkas auth harus memiliki setidaknya 2 baris (token dan chat ID Anda)."
        exit 1
    fi
else
    echo "Berkas auth tidak ditemukan."
    exit 1
fi

# Menjalankan speedtest dan menyimpan hasilnya dalam variabel
speedtest_result=$(speedtest)

# Cek apakah speedtest berhasil atau gagal
if [ $? -eq 0 ]; then
    # Jika berhasil, maka mengambil nilai-nilai yang diperlukan
    result_url=$(echo "$speedtest_result" | grep "Result URL" | cut -d ':' -f2-)

    # Membuat pesan dengan format yang diinginkan jika speedtest berhasil
    message="$result_url"
else
    # Jika speedtest gagal, maka mengirimkan pesan notifikasi
    message="GAGAL SPEEDTEST....."
fi

# Mengirim pesan ke akun Telegram pribadi
curl -s -X POST "https://api.telegram.org/bot$bot_token/sendMessage" -d "chat_id=$CHAT_ID" -d "text=$message" -d "parse_mode=Markdown"
