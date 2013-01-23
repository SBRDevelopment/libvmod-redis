==========
vmod-redis
==========

--------------------
Varnish Redis Module
--------------------

:Author: http://github.com/zephirworks
:Date: 2011-01-01
:Version: 0.1
:Manual section: 3
        
DESCRIPTION
===========

A Varnish module that allows sending commands to redis from the VCL.

At this stage it is mostly a proof-of-concept; it has only received minimal
testing and we have never used it in production. At the very minimum, it will
slow down Varnish a fair amount (at least a few milliseconds per request,
depending on how fast your network and your redis server are).

So far the module builds and runs on FreeBSD--on other platforms, you are on your own (pull requests welcome).

Dependencies
============

* hiredis (https://github.com/antirez/hiredis)

INSTALLATION
============

* ./autogen.sh
* make
* sudo make install

