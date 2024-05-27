FROM sigp/lighthouse:DOCKER_TAG
RUN apt-get update
RUN apt-get -y --no-install-recommends install curl jq ca-certificates iproute2
RUN apt-get autoremove -y
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["/bin/bash", "-c"]

