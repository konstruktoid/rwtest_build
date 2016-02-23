# Docker read/write tester

## Usage
```sh
$ docker run --rm --read-only --tmpfs /tmp:rw,nosuid,nodev -v /var/run/docker.sock:/var/run/docker.sock konstruktoid/rwtest 10000
```

### Example
```sh
Tue Feb 23 21:28:46 UTC 2016
Client:
 Version:      1.10.2
 API version:  1.22
 Go version:   go1.5.3
 Git commit:   c3959b1
 Built:        Mon Feb 22 22:37:33 2016
 OS/Arch:      linux/amd64

Server:
 Version:      1.11.0-dev
 API version:  1.23
 Go version:   go1.5.3
 Git commit:   79edcc5
 Built:        Sat Feb 13 00:16:28 2016
 OS/Arch:      linux/amd64
 Experimental: true
Containers: 8
 Running: 1
 Paused: 0
 Stopped: 7
Images: 25
Server Version: 1.11.0-dev
Storage Driver: overlay
 Backing Filesystem: extfs
Execution Driver: native-0.2
Logging Driver: json-file
Plugins:
 Volume: local
 Network: bridge null host
Kernel Version: 4.2.0-27-generic
Operating System: Ubuntu 15.10
OSType: linux
Architecture: x86_64
CPUs: 1
Total Memory: 1.954 GiB
Name: lab01
ID: SM73:KT2V:2BUU:OFUX:FB5S:KOOJ:DPTN:SRDG:QHIC:IDUM:CDLS:XAU4
Experimental: true

ENTROPY: 1507
WRITE: /dev/urandom to /tmp/tmp.sW8yVulo1N

10000 input blocks, 4096 bytes at a time:
WARNING: No swap limit support
10000+0 records in
10000+0 records out
40960000 bytes (41 MB) copied, 2.19074 s, 18.7 MB/s

10000 input blocks, 2048 bytes at a time:
10000+0 records in
10000+0 records out
20480000 bytes (20 MB) copied, 1.13433 s, 18.1 MB/s

10000 input blocks, 1024 bytes at a time:
10000+0 records in
10000+0 records out
10240000 bytes (10 MB) copied, 0.570152 s, 18.0 MB/s

10000 input blocks, 512 bytes at a time:
10000+0 records in
10000+0 records out
5120000 bytes (5.1 MB) copied, 0.316646 s, 16.2 MB/s

WRITE: /dev/zero to /tmp/tmp.dalG3XHbrc

10000 input blocks, 512 bytes at a time:
10000+0 records in
10000+0 records out
40960000 bytes (41 MB) copied, 0.0488499 s, 838 MB/s

10000 input blocks, 512 bytes at a time:
10000+0 records in
10000+0 records out
20480000 bytes (20 MB) copied, 0.03401 s, 602 MB/s

10000 input blocks, 512 bytes at a time:
10000+0 records in
10000+0 records out
10240000 bytes (10 MB) copied, 0.0255275 s, 401 MB/s

10000 input blocks, 512 bytes at a time:
10000+0 records in
10000+0 records out
5120000 bytes (5.1 MB) copied, 0.0227713 s, 225 MB/s

READ: Reading random lines from /tmp/tmp.sW8yVulo1N.
READ: Read 10000 random lines from /tmp/tmp.sW8yVulo1N.


real    1m23.499s
user    0m3.516s
sys     0m3.032s
ENTROPY: 1469
CLEAN: Removing /tmp/tmp.sW8yVulo1N.
CLEAN: Removing /tmp/tmp.dalG3XHbrc.
```
