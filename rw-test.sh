#!/bin/bash
settings(){
    C="$1"
    F="$(mktemp)"
    w="0"
    r="0"

    if ! [ "$C" -eq "$C" -a "$C" -gt 1 ]; then
      echo "Argument is not an integer."
      exit 1
    fi
}

sysinfo(){
  LC_ALL=C date -u
  docker version
  docker info
  echo
}

wtest(){
  time {
    echo "WRITE: Writing $C lines to $F."
    while [ $w -lt "$C" ]; do
      head -n 1 /dev/urandom | openssl sha1 -sha256 | awk '{print $NF}' >> "$F"
      ((w++))
    done
    echo "WRITE: $w lines written to $F."
  }
  echo
}

rtest(){
  time {
    echo "READ: Reading $C random lines from $F."
    while [ $r -lt "$C" ]; do
      head -$((${RANDOM} % $(wc -l < "$F") + 1)) "$F" | tail -1 2>/dev/null 1>&2
      ((r++))
    done
    echo "READ: Read $r random lines from $F."
  }
  echo
}

clean(){
  echo "CLEAN: Removing $F."
  rm "$F"
}

entropy(){
  if test -f /proc/sys/kernel/random/entropy_avail; then
    ENTROPY="$(cat /proc/sys/kernel/random/entropy_avail)"
    echo "ENTROPY: $ENTROPY"
  fi
}

settings "$@"
sysinfo
entropy
wtest
rtest
entropy
clean
