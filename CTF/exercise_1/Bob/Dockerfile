FROM ubuntu
RUN echo "root:root_bob" | chpasswd
RUN adduser bob
WORKDIR /home/bob
RUN chmod  -R 700 /home/bob
COPY set.sh /home/set.sh
RUN echo "bob:lZL9fnFqQm" | chpasswd
CMD su root




