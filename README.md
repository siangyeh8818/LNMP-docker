# LNMP-docker
LNMP (Linux+Nginx+Mysql+phpMyAdmin) <br>
mysql :5.5 <br>
PHP : 5.6 <br>

容器倉庫位址 : https://hub.docker.com/r/siangyeh8818/lnmp/

安裝與設定
------

已裝有LNMP的基礎容器 , 進一步的設定請在容器內使用下列指令進行設定

    lnmp vhost add
    
安装之后如果需要修改配置，主要的几个配置文件在如下几个路径：<br>
PHP       /usr/local/php/etc/php.ini <br>
PHP-FPM   /usr/local/php/etc/php-fpm.conf <br>
MySQL     /etc/my.cnf <br>
Nginx      /usr/local/nginx/conf/nginx.conf <br>
虚拟机则在 /usr/local/nginx/conf/vhost <br>
