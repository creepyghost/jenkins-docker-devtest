#!/bin/bash

docker pull openjdk:8
docker pull eeacms/jenkins-master:latest
docker pull eeacms/jenkins-slave:latest

docker-compose up -d

until $(curl --output /dev/null --silent --head --fail http://127.0.0.1/login); do
    printf '.\n'
    sleep 5
done

echo "Submit the following secret on http://127.0.0.1/login\n and press enter when done with account setup"
docker exec jenkins_master cat /var/jenkins_home/secrets/initialAdminPassword

read -n 1

wget http://localhost/jnlpJars/jenkins-cli.jar
docker run \
-v `pwd`/jenkins-cli.jar:/opt/jenkins-cli.jar \
-v `pwd`/plugins.txt:/opt/plugins.txt \
-v `pwd`/install_plugins.sh:/opt/install_plugins.sh \
--net=host \
openjdk:8 bash /opt/install_plugins.sh