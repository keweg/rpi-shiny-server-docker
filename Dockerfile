FROM hvalev/rpi-shiny-server-docker

RUN apt-get install -y libglpk.dev g++ libssl-dev

#copy init file
COPY init.sh /etc/shiny-server/init.sh
RUN chmod 777 /etc/shiny-server/init.sh

ENTRYPOINT ["/etc/shiny-server/init.sh"]
