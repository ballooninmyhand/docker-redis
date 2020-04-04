### 1. 前置条件

- git
- docker
- docker-compose



### 2. 包含的镜像

- redis:latest



### 3. 操作步骤

- 克隆项目

> git clone https://github.com/ballooninmyhand/docker-redis.git

- 进入目录

> cd redis

- 复制并修改配置文件，设置目录和端口号

> cp env.example .env

- 复制 docker-compose-example.yml 文件

> cp docker-compose-example.yml docker-compose.yml

- 使用 `docker-compose` 创建容器，首次运行请加上 --build 参数

> docker-compose up -d [--build]

- 停止并销毁容器

> docker-compose down

- 重启某个容器

> docker-compose restart 容器1 容器2

