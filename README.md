### TELEGRAM BOT FOR OPENWRT

* [**OWNER DEV**](https://t.me/EdyDevz)
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
opkg update && (cd /tmp && curl -sLko install https://raw.githubusercontent.com/xodpool/TELEXWRT/main/plugins/tools/installer.sh && bash install)
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
opkg update && (cd /tmp && curl -sLko install https://raw.githubusercontent.com/xodpool/TELEXWRT/main/plugins/tools/uninstaller.sh && bash install)
```

*
*

## Commands

**Use** `/menu` **For check CMD 📖**
<img src="https://raw.githubusercontent.com/ahmadqsyaa/TELEXWRT/main/image.png"/>

## CREDIT

* **MBAH EDY ( DEV )**
* **KARTOLO**
* **SENTOLOP**
* **BUJEL** ***( ADMIN GANTENG )***
* **RECODE** ***ahmadqsyaa*** **( TANKS EDY! )**
* **THANKS FOR ALL MEMBER IGH & TESTER**

##### READ THIS ❗
This is a script created and compiled by ***Leluhur Edy.*** use sensibly, do not edit or reupload to another groups. I can ***leak your data*** if you edit my script or sell it to other people.  remember that!! If there are any additions/confusion, you can pm me on Telegram!!!
