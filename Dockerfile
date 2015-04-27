FROM progrium/consul
MANTAINER Javier Jerónimo <jjeronimo@packagepeer.com>

# HowTo run: docker -v /etc/pki/tls -e GOSSIP_KEY=... -d packagepeer/consul

# Just add encription simetric key for gossip protocol, and RPC TLS support
ADD config/encrypt.json /config
ADD config/rpc-tls.json /config

EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 53 53/udp
VOLUME ["/data"]

ADD pkgp-run.sh /pkgp-run.sh
RUN chmod u+x /pkgp-run.sh

# ################################################################################ Entry point
ENTRYPOINT ["/pkgp-run.sh"]

CMD []
