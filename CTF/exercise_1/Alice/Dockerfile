# OS Ubuntu
FROM ubuntu 

# Install Basic Tools
RUN apt update -y
RUN apt install net-tools -y
RUN apt install openssh-server -y

# input file
COPY text_file/worldlist.txt /home/alice/worldlist.txt

# Run 
RUN [service ssh start ]






