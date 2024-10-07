FROM ubuntu:latest
RUN apt-get update && apt-get install -y curl
CMD ["curl", "http://example.com"]
