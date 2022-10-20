FROM iamashwin99/postopus-tmp:f9ed62bd5b9022e145835dde6f59ee31cc49d7ebc290b4766d60d167dd7a6d2e
# install the notebook package
RUN pip install --no-cache --upgrade pip && \
    pip install --no-cache notebook jupyterlab
USER root
# create user with a home directory
ARG NB_USER=postopus
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}

COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}

USER ${NB_USER}   
WORKDIR ${HOME}
USER ${USER}
