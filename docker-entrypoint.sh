#!/bin/sh
# vim:sw=4:ts=4:et

set -e

set +x
pid="0"

handle_signal() {
	echo "Caught signal, stopping gracefully"
  if [ "x${pid}" != "x0" ]; then
    kill "${pid}"
    wait "${pid}"
  fi
  exit 0
}

trap 'handle_signal' INT TERM HUP USR1 USR2


if [ -z "${ENTRYPOINT_QUIET_LOGS:-}" ]; then
    exec 3>&1
else
    exec 3>/dev/null
fi

DIR=/docker-entrypoint.d
if [ -d "$DIR" ]; then
	echo "Running docker-entrypoint.d scripts"
  /bin/run-parts --verbose "$DIR"
fi

echo "Starting $@"
"$@" &
pid="${!}"
wait "${pid}"


