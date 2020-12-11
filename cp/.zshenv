# only meant for Ubuntu on WSL
case "$(uname -a)" in
  *microsoft*)
    WINDOWS_IP="$(cat /etc/resolv.conf | grep nameserver -m1 | grep -Po '\d+\.\d+\.\d+\.\d+')"
    HTTP_PROXY_PORT=7890
    export http_proxy="http://$WINDOWS_IP:$HTTP_PROXY_PORT"
    export https_proxy="$http_proxy"
    ;;
esac
