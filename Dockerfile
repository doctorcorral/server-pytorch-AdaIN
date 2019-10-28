FROM ubuntu:19.04
RUN apt update 
#&& apt install -y wget python3 python3-pip emacs vim
RUN apt-get -y update
RUN apt-get -y install git

WORKDIR /server-pytorch-AdaIN

RUN git clone https://github.com/naoto0804/pytorch-AdaIN.git
RUN cd pytorch-AdaIN
RUN pip3 install -r requirements.txt

#RUN pip3 install ipython

ENV TERM xterm
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8  

ENV APP_NAME server-pytorch-AdaIN

