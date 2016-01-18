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
  echo "WRITE: Writing to $F"
  echo

  for a in 4096 2048 1024 512; do
    echo "$C input blocks, $a bytes at a time:"
    dd if=/dev/urandom of="$F" count="$C" bs="$a"
    echo
  done
}

rtest(){
  time {
    echo "READ: Reading random lines from $F."
    while [ $r -lt "$C" ]; do
      shuf -n 1 "$F" 2>/dev/null 1>&2
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
