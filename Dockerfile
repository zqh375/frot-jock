# 选择基础镜像
FROM node:18-alpine

# 设置工作目录
WORKDIR /usr/src/app

# 将 package.json 和 package-lock.json 复制到工作目录
COPY package*.json ./

# 安装项目依赖
RUN npm install

# 将项目源代码复制到工作目录
COPY . .

# 暴露应用程序的端口
EXPOSE 5173

# 设置默认启动命令为 `npm run dev`
CMD [ "npm", "run", "dev" ]
