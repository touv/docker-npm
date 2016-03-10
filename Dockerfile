FROM node:5-slim
WORKDIR /root
ENV http_proxy=$http_proxy https_proxy=$https_proxy
ENTRYPOINT ["npm"]
