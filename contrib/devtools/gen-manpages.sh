#!/bin/bash

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

MONEYTREEXED=${MONEYTREEXED:-$SRCDIR/moneytreexed}
MONEYTREEXECLI=${MONEYTREEXECLI:-$SRCDIR/moneytreexe-cli}
MONEYTREEXETX=${MONEYTREEXETX:-$SRCDIR/moneytreexe-tx}
MONEYTREEXEQT=${MONEYTREEXEQT:-$SRCDIR/qt/moneytreexe-qt}

[ ! -x $MONEYTREEXED ] && echo "$MONEYTREEXED not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
MXEVER=($($MONEYTREEXECLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for moneytreexed if --version-string is not set,
# but has different outcomes for moneytreexe-qt and moneytreexe-cli.
echo "[COPYRIGHT]" > footer.h2m
$MONEYTREEXED --version | sed -n '1!p' >> footer.h2m

for cmd in $MONEYTREEXED $MONEYTREEXECLI $MONEYTREEXETX $MONEYTREEXEQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${MXEVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${MXEVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
