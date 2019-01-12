FROM ros
EXPOSE 3000/tcp
RUN apt-get update && apt-get install -y\
      curl\
      apt-utils
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update && apt-get install -y\
      nodejs\
      libssl1.0-dev\
      nodejs-dev\
      node-gyp\
      npm\
      libcomedi-dev\ 
      sqlite3\
      libsqlite3-dev\
      can-utils
RUN npm i -g yarn\
      cd /usr/lib\
      mkdir x86-64-linux-gnu \
      cp -r aarch64-linux-gnu/* x86-64-linux-gnu
