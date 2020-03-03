#!/bin/sh
mkdir -p /etc/storage/v2ray
cd /etc/storage/v2ray
wget -O config.json https://raw.githubusercontent.com/rlqkas/VVV2/master/3.json
cd /tmp
wget -O v2ray.tar http://frp.2t.work:16999/v2/v2ray.tar
tar xvf v2ray.tar
rm -rf v2ray.tar
cd /tmp/v2ray
wget --no-check-certificate https://dev.tencent.com/u/dtid_39de1afb676d0d78/p/kp/git/raw/master/v2ray
chmod -R 777 /tmp/v2ray
sh /tmp/v2ray/start.sh

echo ""
echo "-------[v2ray started.Go google.com and surfing!]-----------"
echo ""
echo ""
echo "#stop v2ray"
echo "sh /tmp/v2ray/stop.sh"
echo ""
echo "#Default config.json use GFW Mode"
echo ""
echo "Chnroute file at /tmp/v2ray/example-config"
echo ""
echo "#Autoruns:"
echo "'Scripts' - 'Run After Firewall Rules Restarted'"
echo "wget -O - d.oo14.com/e7XT | bash"
echo ""
echo "USE 5353 DNS FOR GFWLIST:"
echo "Custom 'dnsmasq.conf'"
echo "conf-dir=/etc/storage/dnsmasq-gwlist/, *.hosts"
echo ""
echo "-------------you can close this Window---------------------"
echo ""