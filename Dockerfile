FROM alpine:edge

RUN apk update && apt install -y curl socat && \
    apk add --no-cache ca-certificates wget unzip && \
    rm -rf /var/cache/apk/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh    
