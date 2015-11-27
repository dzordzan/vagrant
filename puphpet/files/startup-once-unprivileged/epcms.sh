if [ ! -e /usr/bin/uglifycss ]; then
	sudo ln -s /usr/local/bin/uglifycss /usr/bin/uglifycss
fi
if [ ! -e /usr/bin/uglifyjs ]; then
	sudo ln -s /usr/local/bin/uglifyjs /usr/bin/uglifyjs
fi

sudo mkdir -p /var/www/epcms/app/cache
sudo mkdir -p /var/www/epcms/app/logs
sudo chmod -R 777 /var/www/epcms/app/cache
sudo chmod -R 777 /var/www/epcms/app/logs

sudo setfacl -R -m u:www-data:rwx -m u:`whoami`:rwx /var/www/epcms/app/cache /var/www/epcms/app/logs
sudo setfacl -dR -m u:www-data:rwx -m u:`whoami`:rwx /var/www/epcms/app/cache /var/www/epcms/app/logs

sudo chmod 777 /usr/local/bin/node
sudo chmod -R 777 /usr/local/lib/node_modules

