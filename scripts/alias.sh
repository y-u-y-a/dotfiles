#!/bin/sh

{
    echo -e ""
    # コマンド関連
    echo "alias bashpro='vim ~/.bash_profile'"
    echo "alias bashrc='vim ~/.bashrc'"
    echo "alias src_bashpro='source ~/.bash_profile'"
    echo "alias src_bashrc='source ~/.bashrc'"
    echo -e ""

    # アプリ起動関連
    echo "alias finder='open ./'"
    echo -d ""

    # Python関連
    echo "export PIPENV_VENV_IN_PROJECT=true"
    echo "alias py='python3'"
    echo "alias pe='pipenv'"
    echo -e ""

    # docker用mysql接続
    echo "alias mysql4306='mysql -u root -p -h 127.0.0.1 -P 4306'"
    echo -e ""

    # docker関連
    echo "alias dock='docker'"
    echo "alias docks='docker-compose'"
    echo "alias docks_down='docker-compose down --rmi all'"
    echo "function dock_exec(){
        docker exec -it $@ bash
    }"

} >> ~/.bashrc

source ~/.bashrc

# restart shell
exec $SHELL -l
