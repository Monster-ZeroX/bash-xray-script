@@ -1,73 +1,4 @@
# Bash|Xray-Script
# This script is vulnerable to many issues and unhandled exceptions. please consider using other matured and more tested scripts. There are better scripts with better web UIs. v2-ui , x-ui , 3x-ui , marzban , etc.

* UPDATE 01/06/2023 - configs ae now moved from xtls-rprx-direct to xtls-rprx-vision

please use tls and flow xtls-rprx-vision to use new protocol and speed imrovements

* UPDATE 21/05/2021 - added xray-nodomain script (see usage and installation below)


![logo](https://telegra.ph/file/4e19dd26926234ca32b68.jpg)



Xray-Script එක Use කරල ඔයාට High speed Network Connection එකක් / Low ping / Full stable Connection එකක් අත්විදින්න පුලුවන් ...


Manage Script

## :heavy_exclamation_mark: Requirements

* Ubuntu 20.04 or Ubuntu-latest Os එක සහිත Vps එකක්.
* UUID එකක් (V2rayN මගින් හෝ http://uuidgenerator.net මගින් UUID එකක් Genarate කරගන්න).
* DNS use නොකර Ip එකෙන් direct connect කරගන්න xray-nodomain ස්ක්‍රිප්ට් එක භාවිතා කරන්න.

------------------------------------------
## :book: Installation - Without DNS

1)apt-get update -y && apt-get upgrade -y

2)sudo reboot (update එකෙන් පසු restart කිරීමට)

4)sudo git clone https://github.com/Monster-ZeroX/bash-xray-script

5)cd bash-xray-script

6)sudo chmod +x xray-whatever.sh

7)sudo ./xray-whatever.sh

------------------------------------------

## :book: How To Connect

1)Android User කෙනෙක්නම් V2rayNG Download කරගන්න (
https://github.com/2dust/v2rayNG)

2)Windows User කෙනෙක්නම් V2rayN හො Netch Software දෙක Download කරගන්න


* Http Port =  80

* tls port = 443

## :book: Unistallation (Remove xray-core and all modified config files from the server) *will not remove BBR

1) sudo rm  -rf  ~/bash-xray-script

2) sudo git clone https://github.com/Monster-ZeroX/bash-xray-script

3) cd bash-xray-script

4) sudo chmod +x remove-xray.sh

5) sudo ./remove-xray.sh


## :book: Server Auto Restart.

1) sudo chmod +x daily_restart.sh 

2) sudo ./daily_restart.sh 

## :octocat: Credits

1. https://github.com/teddysun - BBR autoscript
2. Team Rezoth - Contributor
3. @Savinda1 - for the awesome readme file 😎
4. Me - For the daily restart script


☆ https://t.me/rezoth_tm ☆
