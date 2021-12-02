FROM ubuntu
RUN echo "root:root_work_bob" | chpasswd
RUN adduser work_bob
WORKDIR /home/work_bob
RUN adduser guest
WORKDIR /home/guest 
RUN chmod  -R 700 /home/work_bob
RUN echo "work_bob:work_bob" | chpasswd
RUN echo "guest:guest" | chpasswd
CMD su guest

