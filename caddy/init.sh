
# install git, make & curl 
sudo apt  update
sudo apt install git
sudo apt install make 
sudo apt install curl

# install caddy 

#curl https://getcaddy.com | bash -s personal
curl https://getcaddy.com | bash -s personal consul,hook.service,http.authz,http.cache,http.cors,http.expires,http.git,http.login,http.prometheus,http.pubsub,http.ratelimit,redis,tls.dns.dnspod,tls.dns.googlecloud
git clone https://github.com/parthi-armory/codelabs.git

# install setcap 
sudo apt-get install libcap2-bin
sudo setcap 'cap_net_bind_service=+ep' /usr/local/bin/caddy

# enable lower port
ulimit -n 8192

# dir for caddy config
sudo mkdir /etc/caddy 

cd ~/codelabs
#caddy -host codelabs.mlcrafting.com
#sudo caddy -port 80
