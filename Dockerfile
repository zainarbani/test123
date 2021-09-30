FROM debian:buster-slim

LABEL org.opencontainers.image.source https:///github.com/zainarbani/test123

ENV DEBIAN_FRONTEND=noninteractive \
	LANG=C.UTF-8 \
	PATH=/usr/local/bin:$PATH

RUN set -ex && \
	apt-get update && apt-get install --assume-yes --no-install-recommends \
		bash \
		ca-certificates \
		curl \
		dirmngr \
		dpkg-dev \
		findutils \
		sudo \
		wget

RUN set -ex && \
	apt-get purge --assume-yes --auto-remove -o APT::AutoRemove::RecommendsImportant=false \
	&& rm -rf /var/lib/apt/lists/*

CMD ["bash"]
