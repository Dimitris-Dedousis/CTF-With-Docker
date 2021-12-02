FROM ubuntu

RUN echo "root:root_alice" | chpasswd
RUN adduser alice
WORKDIR /home/alice
COPY ./file_input/image.jpg  home/alice/image.jpg
RUN adduser guest
WORKDIR /home/guest 
RUN chmod  -R 700 /home/alice
RUN echo "alice:alice" | chpasswd
RUN echo "guest:guest" | chpasswd
CMD su guest

