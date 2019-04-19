FROM hashicorp/consul-template:0.20.0-alpine

USER root
WORKDIR /local
ENV DIR=/local

COPY ./in.tpl /local/in.tpl
COPY ./in2.tpl /local/in2.tpl
COPY ./consul-conf.hcl /local/consul-conf.hcl
COPY ./test.sh /local/test.sh
RUN chmod +x -R /local
CMD ["-config=/local/consul-conf.hcl", "-consul-addr=http://host.docker.internal:8500", "-log-level=trace"]
