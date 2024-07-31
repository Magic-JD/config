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
RUN echo "X11Forwarding yes" >> /etc/ssh/ssh_config;
RUN apt install btop fzf bat zoxide fd-find ripgrep stow eza -y;

RUN echo 'making sure not to cach';
RUN curl -sS https://starship.rs/install.sh | sh -s -- --yes;

RUN chown -R 1000:1000 ${HOME};
USER 1000:1000

RUN git clone https://github.com/Magic-JD/config.git;
RUN stow -d config .;

RUN git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm;
RUN ~/.tmux/plugins/tpm/scripts/install_plugins.sh;

