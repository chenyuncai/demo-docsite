FROM node:18.12.1-slim

RUN mkdir -p /app
WORKDIR /app
ADD .npmrc /app/
ADD package.json /app/
ADD package-lock.json /app/

# 为项目安装依赖
RUN npm install

# 将整个项目复制下来
COPY . /app/

# RUN npm run build
RUN npm run build


EXPOSE 3000

STOPSIGNAL SIGTERM

CMD ["npm", "run", "serve"]