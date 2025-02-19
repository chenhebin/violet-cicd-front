FROM nginx:1.25-alpine

# 标准Nginx配置路径（关键修正）
COPY nginx.conf /etc/nginx/nginx.conf

# 静态文件部署路径（需与nginx.conf中的root一致）
COPY ./dist /usr/share/nginx/html

# 自定义模板（若需要动态配置）
#COPY nginx.template /etc/nginx/templates/

# 使用 Node.js 官方镜像作为基础镜像
#FROM node:20
#
## 设置工作目录
#WORKDIR /app
#
## 将 package.json 和 package-lock.json 复制到容器中
#COPY package*.json ./
#
## 安装依赖
#RUN npm install
#
## 复制构建产物（假设构建产物在 dist 目录中）
#COPY dist /app/dist
#
## 启动应用（根据你的应用类型进行调整）
#CMD ["npm", "start"]
