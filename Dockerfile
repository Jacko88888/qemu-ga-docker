FROM debian:bookworm-slim

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends qemu-guest-agent && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["/usr/sbin/qemu-ga","-d","-p","/dev/virtio-ports/org.qemu.guest_agent.0"]
