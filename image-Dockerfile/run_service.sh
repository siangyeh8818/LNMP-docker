#!/bin/bash

StartUp()
{
    init_name=$1
    echo "Add ${init_name} service at system startup..."
    if [ "$PM" = "yum" ]; then
        chkconfig --add ${init_name}
        chkconfig ${init_name} on
    elif [ "$PM" = "apt" ]; then
        update-rc.d -f ${init_name} defaults
    fi
}

    
echo "Add Startup and Starting LNMP..."
\cp conf/lnmp /bin/lnmp
chmod +x /bin/lnmp
StartUp nginx
/etc/init.d/nginx start
StartUp mysql
/etc/init.d/mysql start
StartUp php-fpm
/etc/init.d/php-fpm start
