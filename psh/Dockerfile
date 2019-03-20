FROM fedora:30

RUN dnf install -y git perl nodejs
RUN npm install --global yarn

RUN cd ${HOME} && \
    git clone https://github.com/gnp/psh.git && \
    cd psh && \
    perl Makefile.PL && \
    make && \
    make install && \
    cd ../ && rm -rf psh

COPY entrypoint.sh ./entrypoint.sh
RUN chmod +x entrypoint.sh

CMD ./entrypoint.sh && tail -f /dev/null
