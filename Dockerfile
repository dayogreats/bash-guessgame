# Path: guessgame.sh

FROM alpine:latest
LABEL maintainer="dayo greats" 
WORKDIR /bin
COPY . /bin/
RUN apk add --no-cache \
    bash \
    curl \
    git \
ENTRYPOINT ["/bin/guessgame.sh"]

CMD [ "chmod", "+x", "./guessgame.sh" ]



