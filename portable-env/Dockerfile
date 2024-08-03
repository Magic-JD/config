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

RUN echo "REFRESH CONFIG"
RUN git clone https://github.com/Magic-JD/config.git;
RUN stow -d config .;

RUN git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm;
RUN ~/.tmux/plugins/tpm/scripts/install_plugins.sh;

RUN mkdir .config;
RUN ln -s ~/config/nvim ~/.config/nvim;
RUN nvim --headless "+Lazy! sync" +qa;
RUN nvim --headless "+MasonInstall actionlint" +qa;
RUN apt install npm -y;
RUN apt install zip -y;
RUN nvim --headless "+MasonInstall prettier bash-debug-adapter" +qa;
RUN apt install golang-go -y;
RUN nvim --headless "+MasonInstall bash-language-server beautysh black checkstyle clang-format css-lsp cssmodules-language-server delve djlint" +qa;
RUN apt install ruby -y;
RUN apt install ruby-dev -y;
RUN nvim --headless "+MasonInstall erb-lint" +qa;
RUN nvim --headless "+MasonInstall golangci-lint" +qa;
RUN nvim --headless "+MasonInstall docker-compose-language-service dockerfile-language-server" +qa;
RUN nvim --headless "+MasonInstall emmet-ls eslint_d gci" +qa;
RUN nvim --headless "+MasonInstall go-debug-adapter gofumpt goimports" +qa;
RUN nvim --headless "+MasonInstall goimports-reviser golangci-lint-langserver golines" +qa;
RUN nvim --headless "+MasonInstall gomodifytags google-java-format gopls gotests gotestsum" +qa;
RUN nvim --headless "+MasonInstall grammarly-languageserver graphql-language-service-cli html-lsp" +qa;
RUN nvim --headless "+MasonInstall htmlbeautifier htmlhint htmx-lsp" +qa;
RUN nvim --headless "+MasonInstall iferr impl isort" +qa;
RUN apt install default-jdk -y;
RUN apt install maven -y;
RUN nvim --headless "+MasonInstall  java-language-server" +qa;
RUN nvim --headless "+MasonInstall java-debug-adapter java-test" +qa;
RUN nvim --headless "+MasonInstall jdtls jq js-debug-adapter" +qa;
RUN nvim --headless "+MasonInstall json-to-struct lua-language-server lwc-language-server" +qa;
RUN nvim --headless "+MasonInstall markuplint nilaway prettierd" +qa;
RUN nvim --headless "+MasonInstall prisma-language-server pylint pyright" +qa;
RUN nvim --headless "+MasonInstall revive rust-analyzer rustywind" +qa;
RUN nvim --headless "+MasonInstall semgrep shellcheck shellharden shfmt snyk" +qa;
RUN nvim --headless "+MasonInstall sonarlint-language-server sql-formatter sqlfluff" +qa;
RUN nvim --headless "+MasonInstall sqlfmt sqlls standardjs" +qa;
RUN nvim --headless "+MasonInstall staticcheck stimulus-language-server stylelint" +qa;
RUN nvim --headless "+MasonInstall stylelint-lsp stylua svelte-language-server" +qa;
RUN nvim --headless "+MasonInstall tailwindcss-language-server templ tree-sitter-cli" +qa;
RUN nvim --headless "+MasonInstall trivy twiggy-language-server typescript-language-server" +qa;
RUN nvim --headless "+MasonInstall typos typos-lsp unocss-language-server" +qa;
RUN nvim --headless "+MasonInstall vscode-java-decompiler" +qa;
RUN chown -R 1000:1000 $WD;
RUN apt install git-delta -y;
USER 1000:1000
RUN echo "update";
RUN cd config && git stash && git pull;
RUN ~/config/create_git_config.sh;
RUN cd config && stow .;
