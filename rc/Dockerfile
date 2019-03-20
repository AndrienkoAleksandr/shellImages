FROM node:8.15.0-jessie

RUN apt-get -y update && apt-get install -y rc

COPY entrypoint.sh ./entrypoint.sh
RUN chmod +x entrypoint.sh

CMD ./entrypoint.sh && tail -f /dev/null
