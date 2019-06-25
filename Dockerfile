FROM alpine
RUN apk add --no-cache nodejs nodejs-npm git
EXPOSE 3000
ENTRYPOINT [ "/bin/sh" ]