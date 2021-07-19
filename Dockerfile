FROM node:lts-buster

WORKDIR /home/runner/

ENV DEBIAN_FRONTEND=noninteractive

ADD entrypoint.sh /entrypoint.sh
ADD git_password.sh /git_password.sh

RUN chmod +x /entrypoint.sh /git_password.sh

CMD ["bash", "/entrypoint.sh"]
