FROM magicjoe52/base-env:v1

RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz &&\
    rm -rf /opt/nvim &&\
    tar -C /opt -xzf nvim-linux64.tar.gz;
ENV PATH="$PATH:/opt/nvim-linux64/bin"

RUN apt install zsh btop fzf zoxide fd-find ripgrep stow eza git-delta -y;

RUN ln -s $(which fdfind) ~/.local/bin/fd;

RUN chsh -s $(which zsh);
RUN pip3 install https://github.com/nvbn/thefuck/archive/master.zip --break-system-packages;


RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && \
    test -d ~/.linuxbrew && \
    eval "$(~/.linuxbrew/bin/brew shellenv)" && \
    test -d /home/linuxbrew/.linuxbrew && \
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" && \
    brew install bat lazygit starship zsh-autosuggestions zsh-syntax-highlighting atuin yazi;
RUN mkdir -p "$(bat --config-dir)/themes" && wget -P "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Mocha.tmTheme && bat cache --build;
