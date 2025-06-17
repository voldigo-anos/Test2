FROM node:lts-buster
RUN git clone https://github.com/voldigo-anos/VOLDI-MD/root/VOLDI-MD
WORKDIR /root/voldigo-anos
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
