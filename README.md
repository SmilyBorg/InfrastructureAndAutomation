# InfrastructureAndAutomation
Documentation and scripts to manage Infrastructure and automation that I manage. Mainly personal domains and homelab, but some for friends and family too.


## Automation
Automation is currently being done with Terraform, and Nomad is about to be brought in. Vault and Consul will likely be added shortly to simplify secret management and service discovery.

### Hashistack
- Terraform for config of infrastructure.
- Nomad for service provisioning.
- Vault for secret storage.
- Consul for service discovery.

I can see a CI/CD pipeline being needed and the idea is to manage all of this as a sort of GitOps approach. Configuration is managed via Git and the automation picks it up from there. Some bootstrapping will be need somewhere, but I'll figure that out when I get there.

## Infrastructure
### Home Network Build

My home network currently has services running on an aging HP microserver running Ubuntu with docker and containers from Linuxserver.io.

The idea/plan is to test using Raspberry Pis to run services and possibly even to do duty as a NAS(Rpi4). Alternatively I would build a new NAS.

In addition I would like to look at some sort of container management too to run containers on multiple systems on the network, so k8s, docker swarm or Nomad.




## Ideas

Pi hole
Steam download cache
wireguard vpn - https://blog.linuxserver.io/2019/11/16/setting-up-wireguard-on-opnsense-android/
Grafana dashboard - influx DB
netboot pxe server - https://blog.linuxserver.io/2019/12/16/netboot-xyz-docker-network-boot-server-pxe/
ZFS + mergerFS - https://blog.linuxserver.io/2019/07/16/perfect-media-server-2019/
zoneminder
MineOS - https://minecraft.codeemo.com/
NTPD/ChronyD with PPS - 
openBalena
sysdig
istio


## containers
### current
linuxserver/sabnzbd
linuxserver/sonarr
linuxserver/couchpotato
linuxserver/plex
linuxserver/kodi-headless
linuxserver/heimdall
linuxserver/lazylibrarian - book/ebook/audio book/comic/magazine downloader
linuxserver/netbootxyz - Netboot server
linuxserver/smokeping - network latency monitor
linuxserver/unifi-controller - for ubiquity networking gear

### try
linuxserver/ffmpeg - video transcode
linuxserver/habridge - home automation
linuxserver/domoticz - home automation
linuxserver/jackett - news host proxy
linuxserver/letsencrypt
linuxserver/lidarr - music download
linuxserver/lychee - photo manager
linuxserver/minisatip - DVB to IP server
linuxserver/nextcloud - nas/dropbox
linuxserver/ombi - plex request server
linuxserver/openvpn-as - vpn server
linuxserver/smokeping - network latency monitor
linuxserver/syncthing - free dropbox
linuxserver/tvheadend - dvb to IP server
linuxserver/radarr - movie downloader
linuxserver/bazarr - subtitel downloader
linuxserver/booksonic - audiobook server/streamer
linuxserver/nzbhydra2 - meta search app for NZB indexers

nginx
homeassistant/home-assistant / homeassistant/raspberrypi3-homeassistant
sysdig
istio

## distros
Ubuntu
Rasbian
open media vault
proxmox?
unraid?
pfsense/opensense?
haas.io?
balenaOS?

## Hardware
### current
RouterBOARD 962UiGS-5HacT2HnT
Gigabit wired networking for offices and APs
200Mbps fibre internet

### Future
change to Unifi wifi APs, 1 upstairs, 1-2 downstairs
Raspberry Pi 3 + 4(4GB) cluster / workbench
Unifi IP cameras
add 10Gbit wired network between video editing PC and Video editing NAS
POE switch for APs, cameras and IoT devices


## Wifi
### Wifi names
That place I put that thing that time
Wu-Tang Lan
Hide Yo Kids Hide You WiFi
LAN Of The Living
You Shall Not Password
GET OFF MY LAN
The Promised LAN
LAN of milk and honey
Tony Stark's Wi-Fi
404 Wi-Fi not found
Internet! Unlimited Internet!
Do. Or Do not. There is no try!
The Internet will be with you. Always
The last Wi-Fi


## Raspberry Pi server


## Epyc Server



## Terraform
https://www.terraform.io/docs/providers/index.html

### Official poviders
AWS - https://www.terraform.io/docs/providers/aws/index.html
Cloud-init - https://www.terraform.io/docs/providers/cloudinit/index.html
Consul - https://www.terraform.io/docs/providers/consul/index.html
DNS - https://www.terraform.io/docs/providers/dns/index.html
Docker - https://www.terraform.io/docs/providers/docker/index.html
Github - https://www.terraform.io/docs/providers/github/index.html
Gitlab - https://www.terraform.io/docs/providers/gitlab/index.html
Grafana - https://www.terraform.io/docs/providers/grafana/index.html
Helm - https://www.terraform.io/docs/providers/helm/index.html
InfluxDB - https://www.terraform.io/docs/providers/influxdb/index.html
Kubernetes - https://www.terraform.io/docs/providers/kubernetes/index.html
Netlify - https://www.terraform.io/docs/providers/netlify/index.html
Nomad - https://www.terraform.io/docs/providers/nomad/index.html
OpenStack - https://www.terraform.io/docs/providers/openstack/index.html
Random - https://www.terraform.io/docs/providers/random/index.html
Template - https://www.terraform.io/docs/providers/template/index.html
Terraform - https://www.terraform.io/docs/providers/terraform/index.html
Time - https://www.terraform.io/docs/providers/time/index.html
TLS - https://www.terraform.io/docs/providers/tls/index.html
Vault - https://www.terraform.io/docs/providers/vault/index.html

### Community Providers
Dropbox - https://github.com/callensm/terraform-provider-dropbox
Elastic Search - https://github.com/phillbaker/terraform-provider-elasticsearch
Git - https://github.com/fourplusone/terraform-provider-git
Google Callendar - https://github.com/sethvargo/terraform-provider-googlecalendar
Google G suite - https://github.com/DeviaVir/terraform-provider-gsuite
OpenFaas - https://github.com/paultyng/terraform-provider-openfaas
Proxmox - https://github.com/Telmate/terraform-provider-proxmox
Sysdig - https://github.com/draios/terraform-provider-sysdig
Telegram - https://github.com/yi-jiayu/terraform-provider-telegram
Trello - https://github.com/jtsaito/terraform-provider-trello
Unifi - https://github.com/paultyng/terraform-provider-unifi

## Nomad


