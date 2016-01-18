# Docker read/write tester

## Usage
```sh
$ docker run --rm --read-only --tmpfs /tmp:rw,nosuid,nodev -v /var/run/docker.sock:/var/run/docker.sock konstruktoid/rwtest 10000
```

### Example
```sh
Mon Jan 18 19:05:27 UTC 2016
Client:
 Version:      1.9.1
 API version:  1.21
 Go version:   go1.4.3
 Git commit:   a34a1d5
 Built:        Fri Nov 20 17:56:04 UTC 2015
 OS/Arch:      linux/amd64

Server:
 Version:      1.10.0-dev
 API version:  1.22
 Go version:   go1.5.3
 Git commit:   7a44265
 Built:        2016-01-14T21:34:58.379593211+00:00
 OS/Arch:      linux/amd64
 Experimental: true
Containers: 25
Images: 72
Server Version: 1.10.0-dev
Storage Driver: aufs
 Root Dir: /var/lib/docker/aufs
 Backing Filesystem: extfs
 Dirs: 107
 Dirperm1 Supported: true
Execution Driver: native-0.2
Logging Driver: json-file
Kernel Version: 4.2.0-23-generic
Operating System: Ubuntu 15.10
CPUs: 2
Total Memory: 3.86 GiB
Name: lab01
ID: SM73:KT2V:2BUU:OFUX:FB5S:KOOJ:DPTN:SRDG:QHIC:IDUM:CDLS:XAU4
Experimental: true
WARNING: No swap limit support

ENTROPY: 1139
WRITE: Writing 10000 lines to /tmp/tmp.ONpkOm.
WRITE: 10000 lines written to /tmp/tmp.ONpkOm.

real    1m1.958s
user    0m4.684s
sys     0m12.928s

READ: Reading 10000 random lines from /tmp/tmp.ONpkOm.

real    2m10.149s
user    0m9.312s
sys     0m8.200s
READ: Read 10000 random lines from /tmp/tmp.ONpkOm.

ENTROPY: 2154
CLEAN: Removing /tmp/tmp.ONpkOm.
```
