FROM ubuntu
RUN apt update -y
RUN apt install net-tools -y
RUN apt install openssh-server -y
RUN service ssh start
RUN echo "root:root_bob" | chpasswd
RUN adduser bob
WORKDIR /home/bob
RUN echo "bob:lZL9fnFqQm" | chpasswd
RUN chmod  -R 700 /home/bob
RUN touch /home/bob/flag.txt





