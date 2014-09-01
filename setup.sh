if [ `uname` = "Darwin" ]; then
  ./setup/setup_mac.sh
elif [ `uname` = "Linux" ]; then
  ./setup/setup_linux.sh
fi

path=$(cd $(dirname $0); pwd)
for file in $(ls home)
do
  from=$path/home/$file
  to="$HOME/."$file
  ln -sf $from $to
done
