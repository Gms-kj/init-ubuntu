# 自定义命令

# 更新软件
update() {
    sudo apt update
    if [ $# -eq 0 ]; then
        sudo apt upgrade -y
    else
        sudo apt --only-upgrade install "$@" -y
    fi
}

# 安装软件包
install() {
    update
    for package in "$@"; do
        if [ "$package" = "code" ]; then
            sudo ./tools/install-vscode.sh
        elif [ "$package" = "firefox" ]; then
            sudo ./tools/install-firefox.sh
        else
            sudo apt install "$package" -y
        fi
    done
}

# 卸载软件包
remove() {
    for package in "$@"; do
        sudo apt remove --purge "$package" -y
    done
    clean
}
# 清理系统
alias clean='sudo apt autoremove -y && sudo apt autoclean -y'
