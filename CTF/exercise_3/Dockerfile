FROM ubuntu
RUN echo "root:root_alice" | chpasswd
RUN ["apt","update","-y"]
COPY text_file/http.pcap /home/http.pcap

