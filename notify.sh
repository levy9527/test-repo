#!/bin/sh
echo "TRAVIS_TEST_RESULT: $TRAVIS_TEST_RESULT"
if [ "$TRAVIS_TEST_RESULT" != "0" ]
then
  echo bye
  exit 1
fi
echo success

url=https://api.github.com/repos/levy9527/test-repo/releases/latest
html_url=`curl $url | sed -n 5p | sed 's/\"html_url\"://g' | awk -F '"' '{print $2}'`
body=`curl $url | grep body | sed 's/\"body\"://g;s/\"//g'`

msg='{"msgtype": "markdown", "markdown": {"title": "新版本发布", "text": "@所有人\n# ['$html_url']('$html_url')'$body'"}}'

curl -X POST https://oapi.dingtalk.com/robot/send\?access_token\=$DINGTALK_ROBOT_TOKEN -H 'Content-Type: application/json' -d "$msg"

