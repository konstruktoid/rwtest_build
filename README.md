```sh
$ bash rw-test.sh 10000
Mon Jan 18 18:26:58 UTC 2016
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
Containers: 21
 Running: 1
 Paused: 0
 Stopped: 20
Images: 64
Server Version: 1.10.0-dev
Storage Driver: aufs
 Root Dir: /var/lib/docker/aufs
 Backing Filesystem: extfs
 Dirs: 90
 Dirperm1 Supported: true
Execution Driver: native-0.2
Logging Driver: json-file
Plugins:
 Volume: local
 Network: null host bridge
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

ENTROPY: 1669
WRITE: Writing 10000 lines to /tmp/tmp.cSYRqPTU2b.
WRITE: 10000 lines written to /tmp/tmp.cSYRqPTU2b.

real    1m7.482s
user    0m11.544s
sys     0m13.728s

READ: Reading 10000 random lines from /tmp/tmp.cSYRqPTU2b.
READ: Read 10000 random lines from /tmp/tmp.cSYRqPTU2b.

real    1m2.535s
user    0m2.320s
sys     0m9.188s

ENTROPY: 1178
CLEAN: Removing /tmp/tmp.cSYRqPTU2b.
```

```sh
$ docker run --rm --read-only --tmpfs /tmp:rw,nosuid,nodev -v /var/run/docker.sock:/var/run/docker.sock rw-test 10000
Mon Jan 18 18:22:06 UTC 2016
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
Containers: 22
Images: 64
Server Version: 1.10.0-dev
Storage Driver: aufs
 Root Dir: /var/lib/docker/aufs
 Backing Filesystem: extfs
 Dirs: 92
 Dirperm1 Supported: true
Execution Driver: native-0.2
Logging Driver: json-file
Kernel Version: 4.2.0-23-generic
Operating System: Ubuntu 15.10
CPUs: 2
Total Memory: 3.86 GiB
Name: lab01
ID: SM73:KT2V:2BUU:OFUX:FB5S:KOOJ:DPTN:SRDG:QHIC:IDUM:CDLS:XAU4
WARNING: No swap limit support
Experimental: true

ENTROPY: 2309
WRITE: Writing 10000 lines to /tmp/tmp.cDJJpp.

real    1m1.713s
user    0m5.020s
sys     0m13.244s
WRITE: 10000 lines written to /tmp/tmp.cDJJpp.

READ: Reading 10000 random lines from /tmp/tmp.cDJJpp.

real    2m13.556s
user    0m7.988s
sys     0m8.808s
READ: Read 10000 random lines from /tmp/tmp.cDJJpp.

ENTROPY: 1786
CLEAN: Removing /tmp/tmp.cDJJpp.
```
