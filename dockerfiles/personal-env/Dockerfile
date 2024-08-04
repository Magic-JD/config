FROM magicjoe52/base-env

RUN git clone https://github.com/Magic-JD/config.git;
RUN stow -d config .;

RUN git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm;
RUN ~/.tmux/plugins/tpm/scripts/install_plugins.sh;

RUN mkdir .config;
RUN ln -s ~/config/nvim ~/.config/nvim;
RUN nvim --headless "+Lazy! sync" +qa;
RUN nvim --headless "+MasonInstall actionlint" +qa;
RUN nvim --headless "+MasonInstall prettier bash-debug-adapter" +qa;
RUN nvim --headless "+MasonInstall bash-language-server beautysh black checkstyle clang-format css-lsp cssmodules-language-server delve djlint" +qa;
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
USER 1000:1000

RUN cd config && git stash && git pull;
RUN ~/config/create_git_config.sh;
RUN cd config && stow .;
RUN nvim --headless "+Lazy! sync" +qa;
# Add Docker's official GPG key:
USER root
RUN newgrp docker;
RUN service docker start;
RUN usermod -aG docker joe;
RUN mkdir -p ~/.local/bin;
RUN echo "joe:joe" | chpasswd && adduser joe sudo;
USER 1000:1000
RUN cd config && git stash && git pull;
ENV WD /home/joe
ENV HOME ${WD}
WORKDIR ${WD}

ARG UNAME=joe
ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID -o $UNAME;
RUN useradd -m -u $UID -g $GID -o -s /bin/bash $UNAME;
