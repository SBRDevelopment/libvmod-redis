vmod-redis
==========

A Varnish module that allows sending commands to redis from the VCL.

At this stage it is mostly a proof-of-concept; it has only received minimal
testing and we have never used it in production. At the very minimum, it will
slow down Varnish a fair amount (at least a few milliseconds per request,
depending on how fast your network and your redis server are).

So far the module builds and runs on FreeBSD--on other platforms, you are on your own (pull requests welcome).


Functions and procedures
------------------------

*redis.send(command)*

Sends the given _command_ to redis; the response will be ignored.

*redis.call(command)*

Sends the given _command_ to redis; any response will be returned as a string.

Dependencies
------------

* hiredis (https://github.com/antirez/hiredis)

Building
--------

* ./autogen.sh
* make
* sudo make install

Configuration
-------------

See the _examples_ folder.
