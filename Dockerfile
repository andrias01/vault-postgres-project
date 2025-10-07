FROM ubuntu:22.04

RUN apt-get update && apt-get install -y wget unzip ca-certificates && update-ca-certificates

RUN wget https://releases.hashicorp.com/vault/1.17.2/vault_1.17.2_linux_amd64.zip && \
    unzip vault_1.17.2_linux_amd64.zip && \
    mv vault /usr/local/bin/ && \
    chmod +x /usr/local/bin/vault && \
    rm vault_1.17.2_linux_amd64.zip

RUN mkdir -p /vault/config

COPY vault-config.hcl /vault/config/vault-config.hcl

EXPOSE 8200

CMD ["vault", "server", "-config=/vault/config/vault-config.hcl"]
