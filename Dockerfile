FROM archlinux:latest

RUN pacman -Syyuu --noconfirm && \
    pacman -S --noconfirm git neovim

RUN chmod -R 777 /root

WORKDIR /root
COPY ./nvim .config/nvim
RUN nvim --headless "+Lazy! sync" +qa

ENTRYPOINT ["nvim"]
