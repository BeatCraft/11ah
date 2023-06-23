# AP_files

このディレクトリ内のファイルは  
"Raspberry Pi OS sd boot iamge for 11ah"  
http://www.beatcraft.jp/NTTE/11AH_20230530.img.xz  
をAP モードで起動させるのに必要なファイルです。  

各ファイルをそれぞれ以下の PATH に配置して起動すると、  
起動時に AP 設定で BC-11ah の wlan0 が up し 11ah AP として動作します。  
（11AH_20230530.img.xz を使用して起動し、nrc7292_sw_pkg を使って  
/home/pi/nrc_pg 一式がインストールされている前提です。） 


AP_files/11ah_test/ap.sh  
AP_files/11ah_test/bc_boot.sh  

/home/pi/11ah_test/ap.sh  
/home/pi/11ah_test/bc_boot.sh  

に配置してください。


AP_files/autostart/boot.desktop  

/home/pi/.config/autostart/boot.desktop  

に配置してください。

Desktop 起動時に実行され、lxtermial を開いて  
bc_boot.sh を実行します。


AP の ssid を変更する場合は、  
/media/beat/rootfs/home/pi/nrc_pkg/script/conf/JP/ap_halow_open.conf  
の  
ssid=  
の行を変更して再起動してください。  



