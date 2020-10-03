# 已有项
echo `
20.04 自带：
python3.8

`

# 安装无线网卡驱动
echo `
我买了一个无线网卡 TL-WDN5200
只在windows下免驱，但是万能的社区给了linux下的驱动
参考这个仓库就好
https://github.com/brektrou/rtl8821CU
只需要下载这个仓库，拷贝到linux上，make & sudo make install 就可以上网啦
`


# 更换 apt 源
echo `
打开 设置->关于->software updates->下载自

选择 mirros.aliyun.com/ubuntu
`

# 安装中文输入法
echo "安装中文输入法首先需要在安装系统的时候选择中文版安装，否则就需要手动装中文语言包"

echo `
安装中文输入法请参考：
https://blog.csdn.net/WU9797/article/details/105743699/
`

# 安装pip
sudo apt install python3-pip

# git
sudo apt install git -y


# 安装 nv 驱动
echo "参考：https://blog.csdn.net/z_6_2_0_s/article/details/106201929"

# 安装 vscode 
## 安装依赖
sudo apt install software-properties-common apt-transport-https wget -y 

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo update
sudo apt install code -y
echo "记得安装 vs code 中文插件和 github theme"

# v2ray
echo "ref: https://www.jianshu.com/p/04edc67ede78"

# chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
echo `按 super 键搜索 key，将 login 的密码换成空白就行`


# onedrive Rclone
## ref https://itsfoss.com/use-onedrive-linux-rclone/
## ref https://itsfoss.com/rclone-browser/
sudo apt install rclone
rclone config
mkdir ~/onedrive
mkdir ~/onedriveCache
sh -c "rclone --vfs-cache-mode full --cache-dir ~/onedriveCache mount oneDrive: ~/onedrive" # 一定要加上缓存文件夹！！要不然每次都从头下载太难顶了
gnome-session-properties # 打开 startup applications
fusermount -qzu onedrive # 卸载 rclone
# word pdf

# teamviewer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt install ./teamviewer_amd64.deb

# SoundWire
wget http://georgielabs.altervista.org/SoundWire_Server_linux64.tar.gz -O SoundWireServer.tar.gz
tar -zxvf SoundWireServer.tar.gz
sudo cp SoundWireServer/SoundWireServer /usr/bin/soundwire
sudo rm -rf SoundWireServer SoundWireServer.tar.gz

# 更改时间格式，避免双系统的时间发生冲突 
timedatectl set-local-rtc 1 --adjust-system-clock

