FROM ubuntu:latest
WORKDIR /app
RUN apt-get update && apt-get install -y docker.io
ENV PATH="/usr/bin/docker:$PATH"
RUN docker run -it wisecow
COPY . .
EXPOSE 4499
CMD ["sh", "wisecow.sh"]
