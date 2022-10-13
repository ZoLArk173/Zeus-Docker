FROM node:14.20.1-bullseye-slim

RUN apt update
RUN apt install -y ssh

ADD catURL /root/
RUN chmod +x /root/catURL
RUN echo 'export BROWSER=/root/catURL' >> /root/.bashrc

RUN npm i @zeppos/zeus-cli -g
