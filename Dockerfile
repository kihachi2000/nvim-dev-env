FROM archlinux:latest

RUN pacman -Syyuu --noconfirm && \
    pacman -S --noconfirm git neovim

#RUN nvim --headless "+Lazy! sync" +qa

ENTRYPOINT ["nvim"]
