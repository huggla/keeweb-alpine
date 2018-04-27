FROM huggla/alpine

RUN apk --no-cache add openssl \
 && downloadDir="$(mktemp -d)" \
 && wget https://github.com/keeweb/keeweb/archive/gh-pages.zip -O "$downloadDir/gh-pages.zip" \
 && unzip "$downloadDir/gh-pages.zip" \
 && mv "$downloadDir/keeweb-gh-pages" /keeweb \
 && rm /keeweb/CNAME
 
 USER sudoer
