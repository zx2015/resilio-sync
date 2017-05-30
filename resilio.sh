#!/bin/bash

exec /usr/bin/rslsync --config /etc/resilio-sync/config.json --nodaemon $*
