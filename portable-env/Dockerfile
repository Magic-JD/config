FROM ubuntu
ENV WD /home/joe
ENV HOME ${WD}
WORKDIR ${WD}
ENV LANG en_US.utf8

RUN apt update;
RUN apt install curl xz-utils git tmux cmake protobuf-compiler vim xbase-clients xbanish -y;

RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz &&\
    rm -rf /opt/nvim &&\
    tar -C /opt -xzf nvim-linux64.tar.gz;
ENV PATH="$PATH:/opt/nvim-linux64/bin"

RUN curl https://sh.rustup.rs -sSf | bash -s -- -y;
ENV PATH "${WD}/.cargo/bin:${PATH}"

RUN cargo install atuin;

RUN apt install zsh -y;
RUN chsh -s $(which zsh);

RUN apt install python3-dev python3-pip python3-setuptools pipx -y;
RUN pip3 install https://github.com/nvbn/thefuck/archive/master.zip --break-system-packages;
RUN apt install btop fzf bat zoxide fd-find ripgrep stow eza -y;

RUN echo 'making sure not to cach';
RUN curl -sS https://starship.rs/install.sh | sh -s -- --yes;

RUN chown -R 1000:1000 ${HOME};
USER 1000:1000

RUN git clone https://github.com/Magic-JD/config.git;
RUN stow -d config .;

RUN git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm;
RUN ~/.tmux/plugins/tpm/scripts/install_plugins.sh;

USER root
RUN export LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*') && \
    curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz";
RUN tar xf lazygit.tar.gz lazygit;
RUN install lazygit /usr/local/bin;

USER 1000:1000

RUN mkdir .config;
RUN ln -s ~/config/nvim ~/.config/nvim;
RUN nvim --headless "+Lazy! sync" +qa;

