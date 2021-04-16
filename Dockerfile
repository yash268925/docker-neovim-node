ARG UID=1000
ARG GID=1000
ARG UNAME=user

FROM yash268925/neovim-shell

ENV GOPATH=/home/$UNAME/.go
ENV PATH="${GOPATH}/bin:${PATH}"

RUN sudo apk add nodejs npm go \
 && sudo npm add -g vls eslint_d typescript-language-server \
 && go get github.com/mattn/efm-langserver

COPY ./efm-langserver /home/$UNAME/.config/efm-langserver
