FROM archlinux:latest

RUN pacman -Syyuu --noconfirm && \
    pacman -S --noconfirm git neovim gcc

RUN chmod -R 777 /root

WORKDIR /root
COPY ./nvim .config/nvim
RUN nvim --headless +"Lazy! sync" +qa
RUN git clone https://github.com/thombergs/code-examples.git

ENTRYPOINT ["nvim"]
