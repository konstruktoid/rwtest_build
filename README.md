# Docker read/write tester

## Usage
```sh
$ docker run --rm --read-only --tmpfs /tmp:rw,nosuid,nodev -v /var/run/docker.sock:/var/run/docker.sock konstruktoid/rwtest 10000
```

### Example
```sh
Mon Jan 18 20:33:37 UTC 2016
Client:
 Version:      1.10.0-dev
 API version:  1.22
 Go version:   go1.5.3
 Git commit:   7a44265
 Built:        Thu Jan 14 21:34:58 2016
 OS/Arch:      linux/amd64
 Experimental: true

Server:
 Version:      1.10.0-dev
 API version:  1.22
 Go version:   go1.5.3
 Git commit:   7a44265
 Built:        Thu Jan 14 21:34:58 2016
 OS/Arch:      linux/amd64
 Experimental: true
Containers: 25
 Running: 1
 Paused: 0
 Stopped: 24
Images: 73
Server Version: 1.10.0-dev
Storage Driver: aufs
 Root Dir: /var/lib/docker/aufs
 Backing Filesystem: extfs
 Dirs: 110
 Dirperm1 Supported: true
Execution Driver: native-0.2
Logging Driver: json-file
Plugins:
 Volume: local
 Network: bridge null host
Kernel Version: 4.2.0-23-generic
Operating System: Ubuntu 15.10
OSType: linux
Architecture: x86_64
CPUs: 2
Total Memory: 3.86 GiB
Name: lab01
ID: SM73:KT2V:2BUU:OFUX:FB5S:KOOJ:DPTN:SRDG:QHIC:IDUM:CDLS:XAU4
WARNING: No swap limit support
Experimental: true

ENTROPY: 1141
WRITE: Writing to /tmp/tmp.pmINrl2Vut

10000 input blocks, 4096 bytes at a time:
10000+0 records in
10000+0 records out
40960000 bytes (41 MB) copied, 2.56001 s, 16.0 MB/s

10000 input blocks, 2048 bytes at a time:
10000+0 records in
10000+0 records out
20480000 bytes (20 MB) copied, 1.31885 s, 15.5 MB/s

10000 input blocks, 1024 bytes at a time:
10000+0 records in
10000+0 records out
10240000 bytes (10 MB) copied, 0.733483 s, 14.0 MB/s

10000 input blocks, 512 bytes at a time:
10000+0 records in
10000+0 records out
5120000 bytes (5.1 MB) copied, 0.412297 s, 12.4 MB/s

READ: Reading random lines from /tmp/tmp.pmINrl2Vut.
READ: Read 10000 random lines from /tmp/tmp.pmINrl2Vut.

real    1m35.785s
user    0m31.940s
sys     0m44.184s

ENTROPY: 1135
CLEAN: Removing /tmp/tmp.pmINrl2Vut.
```
