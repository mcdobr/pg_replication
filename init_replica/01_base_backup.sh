#!/usr/bin/env sh

pg_basebackup --pgdata=data -h 127.0.0.1 --wal-method=stream --checkpoint=fast --username=rep-user
