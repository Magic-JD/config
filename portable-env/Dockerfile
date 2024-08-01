FROM ubuntu
ENV WD /home/joe
ENV HOME ${WD}
WORKDIR ${WD}
ENV LANG en_US.utf8

ARG UNAME=joe
ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID -o $UNAME;
RUN useradd -m -u $UID -g $GID -o -s /bin/bash $UNAME;

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

RUN curl -sS https://starship.rs/install.sh | sh -s -- --yes;
RUN git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions;
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting;

RUN export LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*') && \
    curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz";
RUN tar xf lazygit.tar.gz lazygit;
RUN install lazygit /usr/local/bin;

RUN "REFRESH CONFIG"
RUN git clone https://github.com/Magic-JD/config.git;
RUN stow -d config .;

RUN git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm;
RUN ~/.tmux/plugins/tpm/scripts/install_plugins.sh;

RUN mkdir .config;
RUN ln -s ~/config/nvim ~/.config/nvim;
RUN nvim --headless "+Lazy! sync" +qa;
RUN nvim --headless "+MasonInstallAll prettier actionlint bash-debug-adapter bash-language-server beautysh black checkstyle clang-format css-lsp cssmodules-language-server delve djlint docker-compose-language-service dockerfile-language-server emmet-ls erb-lint eslint_d gci go-debug-adapter gofumpt goimports goimports-reviser golangci-lint golangci-lint-langserver golines gomodifytags google-java-format gopls gotests gotestsum grammarly-languageserver graphql-language-service-cli html-lsp htmlbeautifier htmlhint htmx-lsp iferr impl isort java-debug-adapter java-language-server java-test jdtls jq js-debug-adapter json-to-struct lua-language-server lwc-language-server markuplint nilaway prettierd prisma-language-server pylint pyright revive rust-analyzer rustywind semgrep shellcheck shellharden shfmt snyk sonarlint-language-server sql-formatter sqlfluff sqlfmt sqlls standardjs staticcheck stimulus-language-server stylelint stylelint-lsp stylua svelte-language-server tailwindcss-language-server templ tree-sitter-cli trivy twiggy-language-server typescript-language-server typos typos-lsp unocss-language-server vscode-java-decompiler " +qall;
RUN chown -R 1000:1000 $WD;
