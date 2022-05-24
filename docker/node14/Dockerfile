FROM ubuntu
ENV GO_VERSION=1.17
ENV IGNITE_VERSION=0.17.3

ENV GOPATH=$HOME/go-packages
ENV GOROOT=$HOME/go
ENV PATH=$GOROOT/bin:$GOPATH/bin:$PATH
RUN apt-get update \
  && apt-get install -y curl
RUN curl -fsSL https://dl.google.com/go/go${GO_VERSION}.linux-amd64.tar.gz | tar xzs
#RUN printf '%s\n' 'export GOPATH=/workspace/go'
#RUN 'export PATH=$GOPATH/bin:$PATH' >> $HOME/.bashrc

# Install ignite
RUN curl https://get.ignite.com/cli@v${IGNITE_VERSION}! | bash

RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - \
    && apt-get install -y nodejs
COPY build-vue.sh /
RUN chmod +x /build-vue.sh
#RUN /build-vue.sh
WORKDIR /app

