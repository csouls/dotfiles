function yes_no {
  MSG=$1
  while :
  do
    echo -n "${MSG} y/N: "
    read ans
    case $ans in
      [yY]) return 1 ;;
    [nN]) return 0 ;;
    esac
  done
}

yes_no 'CAUTION : your dotfiles under $HOME will be replaced.'
YES_NO=$?

if [ `uname` = "Darwin" ]; then
  ./setup/setup_mac.sh
elif [ `uname` = "Linux" ]; then
  ./setup/setup_linux.sh
fi

path=$(cd $(dirname $0); pwd)
if [ $YES_NO -eq 1 ]
then
  for file in $(ls home)
  do
    from=$path/home/$file
    to="$HOME/."$file
    echo ln -sf $from $to
    ln -sf $from $to
  done
fi
