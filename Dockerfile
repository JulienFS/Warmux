FROM gcc:12
RUN apt update -y; apt install -y --force-yes libsdl1.2-dev libsdl-gfx1.2-dev libsdl-image1.2-dev libsdl-net1.2-dev libsdl-mixer1.2-dev libsdl-ttf2.0-dev libxml2-dev libcurl4-openssl-dev gettext
COPY . /usr/src/warmux
WORKDIR /usr/src/warmux
RUN ./configure
RUN make
