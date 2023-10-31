#!/bin/bash
set -e
RELPATH="$(dirname "$0")"
cd "$RELPATH"
OWNPATH="$(pwd)"
cd "$OWNPATH"

if [[ -z $REMOTETEST ]]
then export REMOTETEST="bosek@student.tcs.uj.edu.pl"
fi

echo "normal 1"
>&2 echo "error  1"
echo "normal 2"
>&2 echo "error  2"
echo "normal 3"
>&2 echo "error  3"
echo "normal 4"
>&2 echo "error  4"
echo "normal 5"
>&2 echo "error  5"
echo "normal 6"
>&2 echo "error  6"
echo "normal 7"
>&2 echo "error  7"
echo "normal 8"
>&2 echo "error  8"
echo "normal 9"
>&2 echo "error  9"

ssh root@localhost "$INJECTIONDEBUG"
ssh root@localhost "ssh $REMOTETEST \"$($WRAPPER "$INJECTIONDEBUG")\""
$DEBUG ssh root@localhost "$REMOTEDEBUG $OWNPATH/test-basic.sh
  $REMOTEDEBUG ssh $REMOTETEST \"$REMOTEDEBUG ls -la /\""

echo "normal a"
>&2 echo "error  a"
echo "normal b"
>&2 echo "error  b"
echo "normal c"
>&2 echo "error  c"
echo "normal d"
>&2 echo "error  d"
echo "normal e"
>&2 echo "error  e"
echo "normal f"
>&2 echo "error  f"
echo "normal g"
>&2 echo "error  g"
echo "normal h"
>&2 echo "error  h"
echo "normal i"
>&2 echo "error  i"

exit 0