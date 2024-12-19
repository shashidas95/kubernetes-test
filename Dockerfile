
FROM ubuntu:20.04
RUN apt-get update && apt-get install -y --no-install-recommends \
    bash && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
CMD ["/bin/bash", "-c", "while true; do echo \"$NAME\"; sleep 2; done"]
