#!/bin/ash

# log-generator logs to stderr, redirect to file
# redirect generated logs (file: /dev/stdout)
# to stderr for "docker logs" visibility
log-generator $@ 2> /tmp/log-generator.log | tee /dev/stderr
