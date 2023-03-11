FROM nginx as builder

WORKDIR /



RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y hugo
RUN apt-get install make
RUN git clone https://github.com/chazapis/hy548
RUN cd hy548;git submodule init;git submodule update;make html;

FROM nginx:1.23.3-alpine

COPY --from=builder /hy548/html/public/ /usr/share/nginx/html/