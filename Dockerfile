FROM fsharp:netcore
LABEL maintainer="cboudereau"

RUN apt-get update \
    && apt-get install -y \
		curl \
	&& curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
	&& sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-debian-stretch-prod stretch main" > /etc/apt/sources.list.d/microsoft.list' \
	&& apt-get update \
	&& apt-get install -y powershell \
	&& apt-get remove -y curl \
	&& apt-get clean \