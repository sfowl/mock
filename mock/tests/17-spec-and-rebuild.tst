#!/bin/sh

. ${TESTDIR}/functions

header "test --spec argument twith rebuild"
runcmd "$MOCKCMD --spec ${TESTDIR}/test-C.spec ${TESTDIR}/test-C-1.1-0.src.rpm"
res=$?

if [ $res -ne 0 ]; then
   echo "mock rebuild failed"
   exit 1
fi
exit 0
