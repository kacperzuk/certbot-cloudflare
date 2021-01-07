FROM python:3

ENTRYPOINT [ "certbot" ]
VOLUME /etc/letsencrypt /var/lib/letsencrypt
RUN pip install certbot certbot-dns-cloudflare
