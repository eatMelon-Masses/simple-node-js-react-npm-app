#!/usr/bin/env sh

echo 'The following command terminates the "npm start" process using its PID'
echo '(written to ".pidfile"), all of which were conducted when "deliver.sh"'
echo 'was executed.'
set -x
if [ps -o pid |grep $(cat .pidfile)!=""];then
    echo "you have old progress need to kill"
    kill $(cat .pidfile)
fi

