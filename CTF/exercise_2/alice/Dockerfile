FROM ubuntu # OS Ubuntu

# Install Basic Tools
RUN apt update -y
RUN apt install net-tools -y

RUN echo "root:root_alice" | chpasswd # change password root

RUN adduser alice # Add new user alice
WORKDIR /home/alice

# copy file image.jpg
COPY ./file_input/image.jpg  home/alice/image.jpg  

RUN adduser guest  # Add new user alice
WORKDIR /home/guest 

RUN chmod  -R 700 /home/alice # change File Permission (700) 
RUN echo "alice:alice" | chpasswd # change password user alice
RUN echo "guest:guest" | chpasswd # change password user quest

RUN su guest # login account quest

