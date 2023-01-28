FROM ubuntu 
RUN apt update && apt upgrade -y 
RUN apt-get update 
RUN apt install ca-certificates -y 
RUN update-ca-certificates 
COPY . . 
RUN chmod +x ./autodelete-bot 
CMD ["./autodelete-bot"]
