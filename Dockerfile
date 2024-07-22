FROM ubuntu:latest
WORKDIR /app
RUN docker run -it wisecow
COPY . .
EXPOSE 4499
CMD ["sh", "wisecow.sh"]  
