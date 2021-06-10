FROM nvidia/cuda:11.2.2-devel-ubuntu18.04

RUN echo "now pfrl image building..."

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y python3 python3-pip git tmux vim

RUN apt-get -y install gosu sudo
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["/bin/bash"]
