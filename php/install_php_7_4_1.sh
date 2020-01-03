#!/bin/bash
#Authorized by Tonysprite<catchyouhand@qq.com>
#DateTime Jan/2020 3rd.
#php7.4.1 install shell script
#Before export below environment params,you'd better check these libaries path correction.
#If anyone below is not exsit,you can brew install it. 
export SQLITE_CFLAGS=/usr/local/opt/sqlite/include
export SQLITE_LIBS=/usr/local/opt/sqlite/lib
export OPENSSL_LIBS=/usr/local/opt/openssl/lib
export OPENSSL_CFLAGS=/usr/local/opt/openssl/include
export LIBXML_LIBS=/usr/local/opt/libxml++/lib
export LIBXML_CFLAGS=/usr/local/opt/libxml++/include
export ZLIB_CFLAGS=/usr/local/opt/zlib/lib
export ZLIB_LIBS=/usr/local/opt/zlib/include
export CURL_CFLAGS=/usr/local/opt/zlib/include
export CURL_LIBS=/usr/local/opt/zlib/lib
export ONIG_CFLAGS=/usr/local/opt/oniguruma/include
export ONIG_LIBS=/usr/local/opt/oniguruma/lib

#download php-7.4.1
#cd /data/source/
#wget https://www.php.net/distributions/php-7.4.1.tar.gz
#tar -zxvf php-7.4.1.tar.gz

#configure settings
cd ~/data/source/php-7.4.1
./configure  --prefix=/usr/local/php --with-curl --with-gd --enable-libxml --with-libxml-dir=/usr/local/opt/libxml++ --enable-mbstring --with-mysqli --enable-mysqlnd --with-pdo-mysql --with-openssl --with-openssl-dir=/usr/local/opt/openssl --with-pdo-sqlite --with-pcre-dir --enable-bcmath --enable-sockets --enable-sysvsem --enable-sysvmsg --enable-sysvshm --enable-xml --enable-zip --with-zlib --enable-fpm --enable-ftp --with-mcrypt --with-freetype-dir=/usr/local/services/freetype --enable-gd-native-ttf --enable-pcntl --with-jpeg-dir=/usr/local/jpeg --with-png-dir=/usr/local/services/plugins/libpng
#make and build
make
make install
