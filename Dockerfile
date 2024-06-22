FROM --platform=linux/x86_64 node:18.15.0

RUN apt-get update
RUN apt-get install -y locales
RUN apt-get install -y git
RUN apt-get install -y procps
RUN apt-get install -y vim
RUN apt-get install -y tmux
RUN apt-get install -y curl
RUN locale-gen ja_JP.UTF-8
RUN localedef -f UTF-8 -i ja_JP ja_JP
ENV LANG=ja_JP.UTF-8
ENV TZ=Asia/Tokyo
WORKDIR /app
COPY . /app
CMD ["sh", "run.sh"]
