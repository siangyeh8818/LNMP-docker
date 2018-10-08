FROM centos:7

RUN mkdir /lnmp1.5
COPY lnmp1.5 /lnmp1.5
RUN cd /lnmp1.5 && ./install.sh lnmp
COPY run_service.sh /lnmp1.5
COPY docker-entrypoint.sh /lnmp1.5
WORKDIR /lnmp1.5
ENTRYPOINT ["/bin/bash","-c","/lnmp1.5/docker-entrypoint.sh"]
