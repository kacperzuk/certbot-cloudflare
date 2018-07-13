certbot-cloudflare
=================

Docker image for certbot with bundled dns-cloudflare plugin. Example usage:

```
cat > cloudflare_credentials.ini << EOF
dns_cloudflare_email = YOUR@EMAIL
dns_cloudflare_api_key = YOUR_CLOUDFLARE_API_KEY
EOF

docker run --rm -it -v $(pwd)/cloudflare_credentials.ini:/etc/letsencrypt/cloudflare_credentials.ini -v letsencrypt-etc:/etc/letsencrypt -v letsencrypt-lib:/var/lib/letsencrypt kacperzuk/certbot-cloudflare certonly -d YOUR_DOMAIN -m YOUR@EMAIL --dns-cloudflare --dns-cloudflare-credentials=/etc/letsencrypt/cloudflare_credentials.ini
```

### FAQ

#### Why is this not based on certbot/certbot?

certbot/certbot image is based on alpine version of python2 image, which doesn't support ARM architectures.
