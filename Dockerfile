FROM cm2network/steamcmd

ARG INSTALL_DIR=/home/steam/pzserver
ENV SERVER_NAME=servertest
ENV ADMIN_PASSWORD=''
ENV PATH="/home/steam/bin:${PATH}"

RUN ./steamcmd.sh +force_install_dir $INSTALL_DIR +login anonymous +app_update 380870 validate +quit

RUN curl -L https://github.com/itzg/rcon-cli/releases/download/1.5.1/rcon-cli_1.5.1_linux_amd64.tar.gz --output /tmp/archive.tar.gz \
    && mkdir -p /home/steam/bin \
    && tar -C /home/steam/bin -zxvf /tmp/archive.tar.gz rcon-cli

WORKDIR $INSTALL_DIR

CMD ./start-server.sh -servername $SERVER_NAME -adminpassword $ADMIN_PASSWORD
