if [ ! "$(uname)" = 'Linux' ]; then
  exit 0
fi

set -e

case $BASH_SOURCE in
  *.sh) cwd=$(dirname $BASH_SOURCE) ;;
  *)    cwd=$(dirname $0) ;;
esac

# order matters
cd $cwd
cp -R -n ./cp/. $HOME
. setup/zsh
. install/go
. install/node
. install/python

export tf_env=$HOME/tensorflow_env

# install on request
for arg; do
  software=$arg
  case $software in
    jl) software=jupyterlab ;;
    tf) software=tensorflow ;;
  esac

  install_script="install/optional/${software}"
  if [ -x $install_script ]; then
    . $install_script
  fi
done

cd - > /dev/null

# print results
printf '\nCurrent environment:\n'
echo "http_proxy=${http_proxy}"
echo "https_proxy=${https_proxy}"
zsh --version
go version
echo "node $(node -v)"
python3 --version
pip3 --version
printf '\nAll done.\n'
