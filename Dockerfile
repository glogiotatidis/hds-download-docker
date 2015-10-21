FROM debian:latest

RUN apt-get update && apt-get install -y php5-cli php5-curl php5-mcrypt && rm -rf /var/lib/{apt,dpkg,cache,log} /usr/share/doc /usr/share/man /tmp/*

ADD https://raw.githubusercontent.com/K-S-V/Scripts/master/AdobeHDS.php /app/AdobeHDS.php

ENTRYPOINT ["php", "/app/AdobeHDS.php"]
