JAILDIR="/usr/jails/headscale"
if [ ! "$(id -u)" -eq 0 ]; then
    echo "You must be root to do this." 1>&2
    exit 100
fi

mkdir -pv $JAILDIR

echo "installing jail to $JAILDIR" 

bsdinstall -v jail $JAILDIR
