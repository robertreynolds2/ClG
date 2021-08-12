wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
read -p "Paste authtoken here: " CRP
./ngrok authtoken $CRP 
nohup ./ngrok tcp 4000 &>/dev/null &
echo ==============================
sudo apt-get update
echo ==============================
apt-get install ubuntu-desktop -y
wget https://download.nomachine.com/download/7.6/Linux/nomachine_7.6.2_4_amd64.deb
apt install ./nomachine_7.6.2_4_amd64.deb -y
echo ==============================
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo ==============================
sleep 43200
