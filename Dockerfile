FROM nvidia/cuda:11.0-devel-ubuntu20.04

RUN echo "now image building..."

RUN apt-get update
RUN apt-get upgrade -y

# open-sshインストール時にタイムゾーンを聞かれるのを回避
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y tzdata
# timezone setting
ENV TZ=Asia/Tokyo 
RUN apt-get install -y openssh-server

RUN apt-get install -y python3 python3-pip git tmux vim

RUN apt-get -y install gosu sudo
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

# sshdの起動
RUN mkdir /var/run/sshd

CMD ["/usr/sbin/sshd -D"]
