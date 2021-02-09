FROM mumez/pharo-vnc-supervisor
LABEL maintainer="Masashi Umezawa <ume@softumeya.com>"

ARG TARANTUBE_DIR=/root/tarantube
ARG REPOS_URL=github://mumez/Tarantube/repository

RUN setup.sh && \
    save-pharo.sh metacello install ${REPOS_URL} BaselineOfTarantube && \
    cp -r /root/data ${TARANTUBE_DIR}

ENV PHARO_HOME=${TARANTUBE_DIR}
VOLUME [ "${TARANTUBE_DIR}" ]

ADD ./config/startup.st ${TARANTUBE_DIR}/config/
ENV PHARO_START_SCRIPT=${TARANTUBE_DIR}/config/startup.st