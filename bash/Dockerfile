FROM node:8.15.0-alpine

RUN apk add --update bash

COPY entrypoint.sh ./entrypoint.sh
RUN chmod +x entrypoint.sh

CMD ./entrypoint.sh && tail -f /dev/null
