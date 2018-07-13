FROM python:2

ENTRYPOINT [ "certbot" ]
VOLUME /etc/letsencrypt /var/lib/letsencrypt
RUN pip install certbot certbot-dns-cloudflare
