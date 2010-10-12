#!/bin/sh

tar xzf src/apache_1.3.42.tar.gz 
tar xzf src/mod_perl-1.0-current.tar.gz 

(cd mod_perl-1.31/; /usr/bin/perl Makefile.PL USE_APACI=1 EVERYTHING=1 \
    DO_HTTPD=1  APACHE_PREFIX=/usr/local/apache APACHE_SRC=../apache_1.3.42/src \
    APACI_ARGS='--enable-module=rewrite')

(cd mod_perl-1.31/; make)
(cd mod_perl-1.31/; make test)
(cd mod_perl-1.31/; make install)
