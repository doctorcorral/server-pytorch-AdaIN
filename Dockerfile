FROM ubuntu:19.04
RUN apt update && apt install -y wget python3 python3-pip
RUN apt-get -y update
RUN apt-get -y install git

WORKDIR /server-pytorch-AdaIN

RUN git clone https://github.com/naoto0804/pytorch-AdaIN.git

#RUN pip3 install ipython
RUN pip3 install numpy==1.17.2
RUN pip3 install Pillow==6.1.0
RUN pip3 install protobuf==3.9.1
RUN pip3 install six==1.12.0
RUN pip3 install tensorboardX==1.8
RUN pip3 install torch==1.2.0
RUN pip3 install torchvision==0.4.0
RUN pip3 install tqdm==4.35.0
RUN pip3 install pyglet==1.3.2

WORKDIR /server-pytorch-AdaIN/pytorch-AdaIN
COPY *.pth models/

ENV TERM xterm
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8  

ENV APP_NAME server-pytorch-AdaIN

