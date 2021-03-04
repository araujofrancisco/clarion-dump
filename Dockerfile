FROM ubuntu:20.04

RUN apt-get update \
    && apt-get install -y --no-install-recommends cldump \
    && rm -rf /var/lib/apt/lists/*

COPY datadump.sh /usr/local/bin/datadump.sh

VOLUME ["/source"]
VOLUME ["/scripts"]
VOLUME ["/data"]

ENV DATA_POS "_data.sql"
ENV SCRIPT_POS "_script.sql"

ENTRYPOINT ["/usr/local/bin/datadump.sh"]
