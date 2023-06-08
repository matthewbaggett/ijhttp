FROM bellsoft/liberica-openjdk-alpine:17
WORKDIR /
RUN apk --no-cache add \
      curl \
      unzip \
      bash
RUN curl --silent -f -L -o ijhttp.zip "https://jb.gg/ijhttp/latest" && \
    unzip -q ijhttp.zip && \
    rm ijhttp.zip

WORKDIR /ijhttp
ENV PATH="/ijhttp:${PATH}" \
    PS1="\[\e[31m\][\[\e[m\]\[\e[38;5;172m\]\u\[\e[m\]@\[\e[38;5;153m\]\h\[\e[m\] \[\e[38;5;214m\]\W\[\e[m\]\[\e[31m\]]\[\e[m\]\\$ "
ENTRYPOINT ["ijhttp"]