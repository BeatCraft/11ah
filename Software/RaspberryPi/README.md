# Raspberry Pi OS sd boot image for 11ah

BC-11ahモジュールを使用するためのソフトウェアをセットアップ済みの  
Raspberry Pi OS microSD 起動イメージです。  

ファイル構成は、  
[Raspberry Pi OS with desktop (32bit) 2023年2月21日 Release 版](https://downloads.raspberrypi.org/raspios_armhf/images/raspios_armhf-2023-02-22/2023-02-21-raspios-bullseye-armhf.img.xz)  
に  
[NRC7292 Software Package for Host mode (Linux OS) v1.3.4_rev14](https://github.com/newracom/nrc7292_sw_pkg/tree/v1.3.4_rev14)  
をセットアップしたものです。


起動イメージファイルは Release ページからダウンロードしてください。 
https://github.com/BeatCraft/11ah/releases/download/v1.0.0/11AH_20230530.img.xz

ファイルサイズ: 1.5 GB (1570129464 byte)  
SHA256ファイルハッシュ値: d63541c07b584f366d3fc85cce8cc92d5572f2be43816f85e0fa6ce3f4bbd59b  


microSD カードへの書き込みには、  
・Raspberry Pi 公式の [Raspberry Pi Imager](https://www.raspberrypi.com/software/)   
・[balenaEtcher](https://etcher.balena.io/#download-etcher)  
などを使うか、  
Linux 上で dd コマンドを使用し  
`$ sudo dd bs=4M if=11AH_20230530.img.xz of=/dev/sdb conv=fsync status=progress`  
のように実行してください。


このイメージで BC-11ah を接続した Raspberry Pi を起動後ログインして操作するためには  
以下のユーザーを使用してください。  
* user : pi
* password : beatcraft


## 各種参照情報
### Raspberry Pi OS
Raspberry Pi OS に関しては、[Raspberry Pi 公式文書ページ](https://www.raspberrypi.com/documentation/)の以下の各ページを参照してください。  
* [Getting started](https://www.raspberrypi.com/documentation/computers/getting-started.html)
* [Raspberry Pi OS](https://www.raspberrypi.com/documentation/computers/os.html)
* [Configuration](https://www.raspberrypi.com/documentation/computers/configuration.html)
* [The config.txt file](https://www.raspberrypi.com/documentation/computers/config_txt.html)
* [The Linux kernel](https://www.raspberrypi.com/documentation/computers/linux_kernel.html)
  
等々  

### nrw7292_sw_pkg
Newracom の nrc7292_sw_pkg に関しては、github の [nrc7292_sw_pkg](https://github.com/newracom/nrc7292_sw_pkg/tree/v1.3.4_rev14/) 内の  
[NRC7292 SW PKG Release Note (v1.3.4_rev14)](https://github.com/newracom/nrc7292_sw_pkg/blob/v1.3.4_rev14/release_note/RN-7292-001-SW_PKG_release_note%20(v1.3.4_rev14).pdf)  
や、  
[nrc7292_sw_pkg の doc ディレクトリ](https://github.com/newracom/nrc7292_sw_pkg/tree/v1.3.4_rev14/package/host/doc) にある
* [NRC7292 Evaluation Kit User Guide (Raspberry Pi setup)](https://github.com/newracom/nrc7292_sw_pkg/blob/v1.3.4_rev14/package/host/doc/UG-7292-018-Raspberry_Pi_setup.pdf)
* [NRC7292 Evaluation Kit User Guide (Host Mode)](https://github.com/newracom/nrc7292_sw_pkg/blob/v1.3.4_rev14/package/host/doc/UG-7292-001-EVK%20User%20Guide%20(Host%20Mode).pdf)  

などのドキュメント一式を参照してください。


## APモード起動
AP モードで起動する方法については、AP_files/AP_README.md を参照してください。  


