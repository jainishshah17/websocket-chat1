
# jainishshah17/websocket-chat1
#
#
# VERSION               0.0.1

FROM centos
MAINTAINER jainish shah <jainishshah17@gmail.com>

ENV PLAY_VERSION 2.2.4
ENV PATH $PATH:/opt/play-$PLAY_VERSION

RUN yum install -y unzip java-1.7.0-openjdk-devel && yum clean all
ADD http://downloads.typesafe.com/play/$PLAY_VERSION/play-$PLAY_VERSION.zip /tmp/play-$PLAY_VERSION.zip
RUN (cd /opt && unzip /tmp/play-$PLAY_VERSION.zip && rm -f /tmp/play-$PLAY_VERSION.zip)
RUN  (cd /play-2.2.4/samples/java/websocket-chat && play start)

VOLUME ["/opt/workspace"]
WORKDIR /opt/workspace
EXPOSE 9000 

#CMD ["/bin/bash"]
