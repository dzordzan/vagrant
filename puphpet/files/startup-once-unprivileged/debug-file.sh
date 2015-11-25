cat <<EOF > /home/andrzej/debug.sh
 if [ \$1 = 'off' ]; then
     sudo sed -i.bak s/zend_extension/\;zend_extension/g /etc/php5/mods-available/zzzz_custom.ini;
 elif [ \$1 = 'on' ]; then
     sudo sed -i.bak s/\;zend_extension/zend_extension/g /etc/php5/mods-available/zzzz_custom.ini;
 fi;
 
 sudo service php5-fpm restart
EOF

sudo ln -s ~/debug.sh /usr/bin/debug 
sudo chmod 777 /usr/bin/debug