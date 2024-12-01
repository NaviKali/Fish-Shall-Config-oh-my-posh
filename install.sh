#获取型号
system=$1

#Function
#安装Figlet
AZFiglet(){
    case $system in
     "arch")
            # sudo pacman -Sy figlet
            sudo pacman -S figlet
            #test
            figlet "Figlet of Success"
        ;;
    esac

    Next
}


Next()
{
    if [ -f "/usr/local/bin/oh-my-posh" ]; then
        DownloadTheme
    else
        #安装oh-my-posh
        sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
        sudo chmod +x /usr/local/bin/oh-my-posh
        
        DownloadTheme
    fi


}
#替换配置
Config()
{
    sudo cp ./config.fish ~/.config/fish/
    sudo cp ./data/config.fish /etc/fish/
}
#下载主题
DownloadTheme()
{
    sudo mkdir ~/.poshthemes
    sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
    sudo unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
    sudo chmod u+rw ~/.poshthemes/*
    sudo rm ~/.poshthemes/themes.zip
    #替换为LL配置
    sudo cp ./ll.omp.json ~/.poshthemes/

    Config
}


#Start
if [ -z "$1" ]; then
    echo "请传入型号!";
    exit 1;
fi

{
    echo "你确定是要选择[$1]吗?"
    echo "1. yes"
    echo "2. no"
    read isSelect
}

if [ $isSelect == "1" ]
then
    AZFiglet
fi

