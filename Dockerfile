FROM rawmind/alpine-base:0.3.3-3
MAINTAINER Raul Sanchez <rawmind@gmail.com>

#Set environment
ENV SBT_URL=https://dl.bintray.com/sbt/native-packages/sbt \
    SBT_RELEASE=0.13.11 \
    PATH=/opt/sbt/bin:${PATH}

# Install and configure sbt
RUN cd /opt \
  && curl -sS -k "${SBT_URL}/${SBT_RELEASE}/sbt-${SBT_RELEASE}.tgz" | tar -xzf - \
  && /opt/sbt/bin/sbt -batch

WORKDIR /opt/src

ENTRYPOINT ["bash","-c"]
