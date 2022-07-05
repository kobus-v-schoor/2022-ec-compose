FROM bitnami/dotnet-sdk:6

ARG RELEASE=2022.2.1

RUN \
  # download starter pack \
  wget https://github.com/EntelectChallenge/2022-Arctica/releases/download/$RELEASE/starter-pack.zip -O /tmp/starter-pack.zip && \
  # unzip starter pack \
  unzip /tmp/starter-pack.zip -d /tmp/starter-pack && \
  # move the relevant files into /app \
  cd /tmp/starter-pack; mv runner-publish /app/runner; mv engine-publish /app/engine; mv logger-publish /app/logger && \
  # remove unused starter pack files \
  rm -r /tmp/starter-pack /tmp/starter-pack.zip && \
  # install vim for in container editing \
  apt-get update && apt-get install -y vim

COPY run.sh /app
ENTRYPOINT ["./run.sh"]

# vim: set ft=dockerfile:
