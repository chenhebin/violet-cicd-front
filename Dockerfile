#FROM nginx
#
#RUN mkdir -p /data/web/
#WORKDIR /data/web/
#
#COPY nginx.conf /usr/local/nginx/conf/nginx.conf
#COPY ./dist /data/web/
#COPY nginx.template /tmp/
# 使用 Node.js 官方镜像作为基础镜像
FROM node:20

# 设置工作目录
WORKDIR /app

# 将 package.json 和 package-lock.json 复制到容器中
COPY package*.json ./

# 安装依赖
RUN npm install

# 复制构建产物（假设构建产物在 dist 目录中）
COPY dist /app/dist

# 启动应用（根据你的应用类型进行调整）
CMD ["npm", "start"]
