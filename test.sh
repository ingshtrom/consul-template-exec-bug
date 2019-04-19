#!/bin/sh

ls -al $DIR
echo 'foobar';
sleep 5;
echo 'foobar2';

echo '----------------------------------------'
cat ${DIR}/out.txt
echo '----------------------------------------'
cat ${DIR}/out2.txt
echo '----------------------------------------'
ls -al $DIR
