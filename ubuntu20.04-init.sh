# 已有项
echo `
20.04 自带：
python3.8

`


# 安装中文输入法
echo "安装中文输入法首先需要在安装系统的时候选择中文版安装，否则就需要手动装中文语言包"

echo `
安装中文输入法请参考：
https://blog.csdn.net/WU9797/article/details/105743699/
`

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

