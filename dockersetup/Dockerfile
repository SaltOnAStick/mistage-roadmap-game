FROM ubuntu:20.10
RUN apt update \
	&& apt install bash
RUN apt install -y git
RUN git --version > /mnt/git.txt
RUN mkdir mywebmistage
RUN git clone https://github.com/MistAgeDev/mistage-roadmap-game mywebmistage
RUN apt install -y npm
WORKDIR /mywebmistage
EXPOSE 80
CMD ["cd", "dockersetup"]
CMD ["bash", "setupFromDocker.sh"]