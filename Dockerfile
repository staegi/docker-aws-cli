FROM python:3

RUN pip install git+https://github.com/aws/aws-cli.git@v2

RUN curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/mac/sessionmanager-bundle.zip" -o "sessionmanager-bundle.zip"\
    && unzip sessionmanager-bundle.zip\
    && ./sessionmanager-bundle/install -i /usr/local/sessionmanagerplugin -b /usr/local/bin/session-manager-plugin\
    && rm -f ./sessionmanager-bundle.zip\

CMD ["bash"]