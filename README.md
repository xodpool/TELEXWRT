### TELEGRAM BOT FOR OPENWRT

* [**OWNER DEV**](https//.me/EdyDevz)
* [**DECODE (saya)**](https://t.me/rickk1kch)
  
##### TUTORIAL
* [**VIEW ON YOUTUBE**](https://youtu.be/4zhOv0Ke_Vs?si=B2qRDOyYifILzSur)


### NOTE❗
***TUTORIAL UDAH LENGKAP NJENG! GAUSAH BANYAK TANYA! BACA SAMPE KELAR BIAR PAHAM!!!***
**THIS CODE IS THE RECODE RESULT OF MBAH EDY**

### REQUIREMENTS

* `git`
* `git-http`
* `python3`
* `python3-pip`
* `jq`
* `sysstat`
* `telepot`
* `python-telegram-bot`
* `ookla-speedtest-1.1.1`



##### MANUAL INSTALL 😎
```
opkg update
```

```
opkg install git
```

```
opkg install git-http
```

```
opkg install python3
```

```
opkg install python3-pip
```

```
opkg install jq
```

```
opkg install sysstat
```

```
pip3 install telepot requests python-telegram-bot
```

```
opkg list-installed | grep python3 && pip3 list
```
##### CLONE REPO

```
git clone https://github.com/ahmadqsyaa/TELEXWRT
```
##### MOVE ALL PACKAGE

```
mv /root/TELEXWRT/edy /etc/init.d/ && mv /root/TELEXWRT/edy.py /usr/bin/ && chmod +x /usr/bin/edy.py && chmod +x /etc/init.d/edy && rm -rf /root/TELEXWRT/plugins
```
*
*
##### AUTO INSTALLER 🚀

```
opkg update && (cd /tmp && curl -sLko install https://raw.githubusercontent.com/ahmadqsyaa/TELEXWRT/main/plugins/tools/installer.sh && bash install)
```
*
*
##### EDIT AUTH ADMIN & BOT
```
nano /root/TELEXWRT/AUTH
```
*
*
##### SCHEDULED TASKS
**COPAS TO** `SCHEDULED TASK`
```
*/30 * * * * service edy restart
```
*
*
##### ENABLE SERVICE ✅

```
service edy enable
```

##### START BOT 🚀

```
service edy start
```

##### RESTART BOT ♻️

```
service edy restart
```

##### STOP BOT ❌

```
service edy stop
```
*
*

##### UNINSTALLER BOT 🗑️

```
opkg update && (cd /tmp && curl -sLko install https://raw.githubusercontent.com/ahmadqsyaa/TELEXWRT/main/plugins/tools/uninstaller.sh && bash install)
```

*
*

## Commands

**Use** `/menu` **For check CMD 📖**

 ╔════════❖══════════❖════════╗
                                𐌌𐌄𐌍𐌵 𐌁Ꝋ𐌕    
╚════════❖══════════❖════════╝
╔════════❖══════════❖════════╗
 ➥ /system ᯤ 𝚅𝚒𝚎𝚠 𝚂𝚢𝚜𝚝𝚎𝚖 𝙸𝚗𝚏𝚘𝚛𝚖𝚊𝚝𝚒𝚘𝚗
 ➥ /speedtest ᯤ 𝙸𝚗𝚝𝚎𝚛𝚗𝚎𝚝 𝚂𝚙𝚎𝚎𝚍 𝙰𝚗𝚊𝚕𝚢𝚜𝚒𝚜
 ➥ /vnstat ᯤ 𝚅𝚗𝚜𝚝𝚊𝚝 𝙼𝚘𝚗𝚒𝚝𝚘𝚛
 ➥ /ping ᯤ 𝙿𝚒𝚗𝚐 𝚂𝚎𝚛𝚟𝚎𝚛 
 ➥ /clear ᯤ 𝙲𝚊𝚌𝚑𝚎 𝙼𝚎𝚖𝚘𝚛𝚢 𝙿𝚞𝚛𝚐𝚎
 ➥ /restart ᯤ 𝚁𝚎𝚜𝚝𝚊𝚛𝚝 𝚋𝚘𝚝
 ➥ /reboot ᯤ 𝚁𝚎𝚋𝚘𝚘𝚝 𝚜𝚎𝚛𝚟𝚎𝚛
 ➥ /shutdown ᯤ 𝚂𝚑𝚞𝚝𝚍𝚘𝚠𝚗 𝚜𝚎𝚛𝚟𝚎𝚛
 ➥ /ocstart ᯤ 𝚂𝚎𝚛𝚟𝚒𝚌𝚎 𝚘𝚙𝚎𝚗𝚌𝚕𝚊𝚜𝚑 𝚜𝚝𝚊𝚛𝚝 
 ➥ /ocrestart ᯤ 𝚂𝚎𝚛𝚟𝚒𝚌𝚎 𝚘𝚙𝚎𝚗𝚌𝚕𝚊𝚜𝚑 𝚛𝚎𝚜𝚝𝚊𝚛𝚝 
 ➥ /ocstop ᯤ 𝚂𝚎𝚛𝚟𝚒𝚌𝚎 𝚘𝚙𝚎𝚗𝚌𝚕𝚊𝚜𝚑 𝚜𝚝𝚘𝚙
 ➥ /opkgupdate ᯤ 𝚄𝚙𝚍𝚊𝚝𝚎 𝚙𝚊𝚌𝚔𝚊𝚐𝚎 𝚘𝚙𝚎𝚗𝚠𝚛𝚝
 ➥ /infomodem ᯤ 𝙸𝚗𝚏𝚘𝚛𝚖𝚊𝚜𝚒 𝚖𝚘𝚍𝚎𝚖
 ➥ /restartmodem ᯤ 𝚁𝚎𝚜𝚝𝚊𝚛𝚝 𝚖𝚘𝚍𝚎𝚖
 ▰▱▰▱▰▱▰▰▱▰▱▰▱▰▱▰▱▰▱▰▱
                           𝙏𝙀𝙇𝙀𝙓𝙒𝙍𝙏 2024
╚════════❖══════════❖════════╝
## CREDIT

* **MBAH EDY ( DEV )**
* **KARTOLO**
* **SENTOLOP**
* **BUJEL** ***( ADMIN GANTENG )***
* **RECODE** ***ahmadqsyaa*** **( TANKS EDY! )**
* **THANKS FOR ALL MEMBER IGH & TESTER**

##### READ THIS ❗
This is a script created and compiled by ***Leluhur Edy.*** use sensibly, do not edit or reupload to another groups. I can ***leak your data*** if you edit my script or sell it to other people.  remember that!! If there are any additions/confusion, you can pm me on Telegram!!!
