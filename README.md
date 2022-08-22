# AWS CLI with Session Manager Plugin

This Docker image has installed the [Session Manager Plugin](https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html) in addition to the AWS CLI. See [amazon/aws-cli](https://hub.docker.com/r/amazon/aws-cli) for more details.

## Build & Deploy

     docker build . -t awscli --platform linux/amd64
     docker tag awscli:latest tomcat2111/aws-cli:latest
     docker push tomcat2111/aws-cli:latest
