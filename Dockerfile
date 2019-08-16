FROM jenkins/jenkins:lts

# Since jenkins uses debian as base image.
# I took the below commands from the guide in official docker document.
# https://docs.docker.com/install/linux/docker-ce/debian/
USER root
RUN apt-get update \
    && apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common jq wget \
    && curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - &&  apt-key fingerprint 0EBFCD88 \
    && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" \
    && apt-get update && apt-get install -y docker-ce docker-ce-cli containerd.io \
    && apt-get upgrade -y && rm -rf /var/lib/apt/lists/* \
    && usermod -aG docker jenkins
# change to jenkins user.
USER jenkins