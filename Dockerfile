FROM huggla/alpine

ENV CONFIG_DIR="/etc/keeweb"

RUN apk --no-cache add openssl \
 && downloadDir="$(mktemp -d)" \
 && wget https://github.com/keeweb/keeweb/archive/gh-pages.zip -O "$downloadDir/gh-pages.zip" \
 && unzip "$downloadDir/gh-pages.zip" \
 && mv "$downloadDir/keeweb-gh-pages" /keeweb \
 && rm /keeweb/CNAME

ENV REV_

USER sudoer
