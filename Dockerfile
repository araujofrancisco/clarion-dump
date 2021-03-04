FROM ubuntu:20.04

ENV DATA_POS "_data.sql"
ENV SCRIPT_POS "_script.sql"

VOLUME ["/source"]
VOLUME ["/scripts"]
VOLUME ["/data"]

RUN apt-get update \
    && apt-get install -y --no-install-recommends cldump \
    && rm -rf /var/lib/apt/lists/*

COPY datadump.sh /usr/local/bin/datadump.sh

ENTRYPOINT ["/usr/local/bin/datadump.sh"]
