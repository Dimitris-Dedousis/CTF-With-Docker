FROM ubuntu
RUN echo "bob:lZL9fnFqQm" | chpasswd
RUN apt install net-tools -y
RUN apt install openssh-server -y
RUN service ssh start
RUN echo "root:root_bob" | chpasswd
RUN adduser bob
WORKDIR /home/bob
RUN chmod  -R 700 /home/bob
CMD ["su","root"]





