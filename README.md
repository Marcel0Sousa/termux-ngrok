# termux-ngrok
[ngrok](https://ngrok.com/) is a service that provides servers behind NATs and firewalls that make public connections in tunnels [documentation](https://ngrok.com/docs).

### Install ngrok on Termux
```
apt update && apt upgrade
apt install git
git clone https://github.com/tchelospy/termux-ngrok.git
cd termux-ngrok
chmod +x termux-ngrok.sh
./termux-ngrok.sh
