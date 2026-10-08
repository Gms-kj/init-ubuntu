# 自定义命令

# 更新软件
upgdate() {
    sudo apt update
    if [ $# -eq 0 ]; then
        sudo apt upgrade -y
    else
        sudo apt --only-upgrade install "$@" -y
    fi
}

# 清理系统
alias clean='sudo apt autoremove -y && sudo apt autoclean -y'
