FROM fangohr/octopus:12.1

USER root
RUN apt-get -y update && apt-get -y install python3 \
            python3-pip \
            ffmpeg \
            libsm6 \
            libxext6 \
            gnuplot \
            && rm -rf /var/lib/apt/lists/*
# create user with a home directory
ARG NB_USER=postopus_user
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
# install the notebook package
RUN pip install --no-cache --upgrade pip && \
    pip install --no-cache notebook jupyterlab && \
    pip install --no-cache git+https://gitlab.com/octopus-code/postopus.git && \
    pip install --no-cache "holoviews[recommended]" && \
    pip install --no-cache git+https://gitlab.com/ase/ase.git@master
WORKDIR ${HOME}
# add /home/postopus_user/.local/bin' to path
ENV PATH="${HOME}/.local/bin:${PATH}"
# ENTRYPOINT ["/bin/bash"]