FROM node:5-slim
WORKDIR /home
ENV http_proxy=$http_proxy https_proxy=$https_proxy
ENTRYPOINT ["npm"]
