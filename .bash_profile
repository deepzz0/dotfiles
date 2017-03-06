export GOPATH=~/gopath
export GOROOT=~/go
export GOROOT_BOOTSTRAP=~/go1.7
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOROOT/bin:$GOBIN
#export DOCKER_HOST="tcp://127.0.0.1:2375"
#export ETCD_HOST=$(echo $DOCKER_HOST|cut -d'/' -f3|cut -d: -f1):4001
export MGO="127.0.0.1"

export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_MACHINE_NAME="default"
export DOCKER_CERT_PATH="~/.docker/machine/machines/default"
