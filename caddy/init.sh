sudo apt  update
sudo apt install git
sudo apt install make 
sudo apt install curl
#curl https://getcaddy.com | bash -s personal
curl https://getcaddy.com | bash -s personal consul,hook.service,http.authz,http.cache,http.cors,http.expires,http.git,http.login,http.prometheus,http.pubsub,http.ratelimit,redis,tls.dns.dnspod,tls.dns.googlecloud
git clone https://github.com/parthi-armory/codelabs.git
cd codelabs
sudo setcap 'cap_net_bind_service=+ep' /usr/local/bin/caddy
ulimit -n 8192
sudo caddy -port 80
