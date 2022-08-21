FROM amazon/aws-cli:2.7.25

RUN yum install -y unzip
RUN curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/mac/sessionmanager-bundle.zip" -o "sessionmanager-bundle.zip"\
    && unzip sessionmanager-bundle.zip\
    && ./sessionmanager-bundle/install -i /usr/local/sessionmanagerplugin -b /usr/local/bin/session-manager-plugin\
    && rm -f ./sessionmanager-bundle.zip\

