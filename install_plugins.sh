#!/usr/bin/env bash
export JENKINS_USERNAME='admin'
export JENKINS_TOKEN='admin'
cd /opt
cat plugins.txt| xargs -I% java -jar jenkins-cli.jar -s 'http://localhost/' -auth "${JENKINS_USERNAME}:${JENKINS_TOKEN}" install-plugin "%" -deploy