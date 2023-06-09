FROM python:3.8

ENV AWSCLI_VERSION="1.27.131"

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]
