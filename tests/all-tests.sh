#!/bin/bash
set +e
RELPATH="$(dirname "$0")"
cd "$RELPATH"
OWNPATH="$(pwd)"

# Normalne wywołanie:
${TESTED_DEBUGGER} ./test-basic.sh

# Wywołanie skończone błedem 123:
${TESTED_DEBUGGER} ./test-error.sh

# Wywołanie skrópty kolorującego tekst:
${TESTED_DEBUGGER} ./test-color.sh

# Wywołanie z wywołaniem wewnętrznym:
${TESTED_DEBUGGER} ./test-rec.sh

# Wywołanie z wywołaniem wewnętrznym z błedem wyjścia:
${TESTED_DEBUGGER} ./test-rec-error.sh

# Wywołanie z wywołaniem wewnętrznym sudo:
${TESTED_DEBUGGER} ./test-sudo.sh

# Wywołanie z wywołaniem wewnętrznym sudo z błedem wyjścia:
${TESTED_DEBUGGER} ./test-sudo-error.sh

# Wywołanie z wywołaniem nohup:
${TESTED_DEBUGGER} ./test-nohup.sh

# Wywołanie z wywołaniem nohup z błedem wyjścia:
${TESTED_DEBUGGER} ./test-nohup-error.sh

# Wywołanie ssh na localhost z inlinowanym kodem debug'u:
# ${TESTED_DEBUGGER} ./test-ssh-locale-inline.sh

# Wywołanie ssh na localhost z inlinowanym kodem debug'u z błędem wyjścia:
# ${TESTED_DEBUGGER} ./test-ssh-locale-inline-error.sh

# Wywołanie ssh na serwer zdalny z inlinowanym kodem debug'u:
# ${TESTED_DEBUGGER} ./test-ssh-remote-inline.sh

# Wywołanie ssh na localhost z inlinowanym kodem debug'u:
# ${TESTED_DEBUGGER} ./test-ssh-rec-inline.sh

# Wywołanie ssh z wszczyknięciem kodu debug'a:
${TESTED_DEBUGGER} ./test-ssh-injection.sh

# Wywołanie podwójne ssh z wszczyknięciem kodu debug'a:
${TESTED_DEBUGGER} ./test-ssh-ssh-injection.sh

###############################################################
# Przesyłanie logów na zdalny serwer.
###############################################################

# Przesyłanie logów na zdalny serwer.
# export SYNCMODE=rsync
# export RSYNCADDRESS=student.tcs.uj.edu.pl
# ${TESTED_DEBUGGER} ./test-rsync-ssh.sh

# Przesyłanie logów na zdalny serwer z użyciem REMOTECALLHANDLER.
# export SYNCMODE=rsync
# export RSYNCADDRESS=student.tcs.uj.edu.pl
# ${TESTED_DEBUGGER} ./test-rsync-ssh-nohup.sh

# Przesyłanie logów na zdalny serwer z użyciem REMOTECALLHANDLER.
# export SYNCMODE=rsync
# export RSYNCADDRESS=student.tcs.uj.edu.pl
# ${TESTED_DEBUGGER} ./test-rsync-nohup-ssh-nohup.sh

# Przesyłanie logów na zdalny serwer z użyciem REMOTECALLHANDLER inny scenariusz.
# export SYNCMODE=rsync
# export RSYNCADDRESS=student.tcs.uj.edu.pl
# ${TESTED_DEBUGGER} ./test-rsync-nohup-debug-ssh-nohup.sh

exit 0