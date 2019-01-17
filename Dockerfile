FROM mumez/pharo-vnc-supervisor
LABEL maintainer="Masashi Umezawa <ume@softumeya.com>"

ARG TARANTUBE_DIR=/root/tarantube

RUN setup.sh && \
    save-pharo.sh config http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo60/main/ \
	ConfigurationOfZincHTTPComponents --install=stable && \
    save-pharo.sh config http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo60/main/ \
	ConfigurationOfTarantube --install=stable && \
    cp -r /root/data ${TARANTUBE_DIR}

ENV PHARO_HOME=${TARANTUBE_DIR}
VOLUME [ "${TARANTUBE_DIR}" ]

ADD ./config/startup.st ${TARANTUBE_DIR}/config/
