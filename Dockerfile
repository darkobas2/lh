FROM sigp/lighthouse:v3.1.0-modern
RUN apt-get update
RUN apt-get -y --no-install-recommends install curl jq ca-certificates iproute2
RUN apt-get autoremove -y
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["/bin/bash", "-c"]
