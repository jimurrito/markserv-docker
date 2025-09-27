FROM debian:bookworm-slim

RUN apt update && apt upgrade
RUN apt install nodejs npm yarn -y
#RUN yarn global add markserv
RUN npm i -g markserv

CMD [ "markserv", "-a", "0.0.0.0", "/app" ]
