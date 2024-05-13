FROM alpine:latest

RUN apk update --no-cache && \
    apk add --no-cache git neovim gcc

RUN chmod -R 777 /root

WORKDIR /root
COPY ./nvim .config/nvim
RUN nvim --headless +"Lazy! sync" +qa
RUN git clone https://github.com/thombergs/code-examples.git

ENTRYPOINT ["nvim"]
