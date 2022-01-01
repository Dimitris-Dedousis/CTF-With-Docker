FROM ubuntu # OS Ubuntu

# Install Basic Tools
RUN apt update -y

RUN echo "root:root_alice" | chpasswd # change password root

RUN adduser alice # Add new user alice
WORKDIR /home/alice

# copy file image.jpg
COPY ./file_input/image.jpg  home/alice/image.jpg  

RUN su alice # login account alice

