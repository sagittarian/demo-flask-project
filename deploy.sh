#!/bin/bash -xe
echo "Deploy!"
echo "GIT_COMMIT $GIT_COMMIT"
echo "GIT_BRANCH $GIT_BRANCH"
echo "GIT_AUTHOR_NAME $GIT_AUTHOR_NAME"
echo "GIT_AUTHOR_EMAIL $GIT_AUTHOR_EMAIL"

echo "GIT_COMMITTER_NAME $GIT_COMMITTER_NAME"
echo "GIT_COMMITTER_EMAIL $GIT_COMMITTER_EMAIL"

echo "GIT_COMMIT $GIT_COMMIT" > release.txt

DATE=`date '+%Y-%m-%d--%H-%M-%S'`
tar czf release-$DATE-$GIT_COMMIT.gz demo.py templates/


cd /home/adam/src/demo-flask-project
git pull
sudo /usr/sbin/service uwsgi reload
