FROM ubuntu
RUN echo "root:root_alice" | chpasswd
RUN adduser alice
WORKDIR /home/alice
RUN adduser guest
WORKDIR /home/guest 
COPY text_file/hash_pass.txt /home/alice/hash_pass.txt
COPY text_file/worldlist.txt /home/alice/worldlist.txt
RUN chmod  -R 700 /home/alice
RUN echo "alice:alice" | chpasswd
RUN echo "guest:guest" | chpasswd
CMD ["apt","update","-y"]
CMD su guest

