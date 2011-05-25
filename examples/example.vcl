#
# A trivial example to demonstrate how to use this vmod
#

import redis;

backend be1 {
  .host = "192.168.0.1";
  .port = "80";
}

sub vcl_recv {
  #
  # redis.call is a procedure, it will send the command to redis and ignore
  # the response. If the command errors out, it will be logged but the VCL
  # will not know.
  #
  redis.send("LPUSH client " + client.ip);

  #
  # redis.call is a function that sends the command to redis and return the
  # return value as a string.
  #
  set req.http.x-redis = redis.call("LTRIM client 0 99");
}
