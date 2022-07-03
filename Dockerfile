FROM ricariel/apache2:latest 
LABEL org.opencontainers.image.authors="fabrice.kirchner@casa-due-pur.de" 

ARG DEBIAN_FRONTEND=noninteractive
ARG JTL_SHOP_VERSION=shop-v4-06-19

RUN apt-get update \ 
		&& apt-get upgrade -y \
		&& apt-get install -y \ 
        wget \
				patch \
		&& rm -rf /var/lib/apt/lists/*

COPY proxy-php.conf /etc/apache2/conf-available/proxy-php.conf
RUN a2enconf proxy-php

ENTRYPOINT ["/docker-entrypoint.sh"]
