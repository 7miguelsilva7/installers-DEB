sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install curl -y
curl -L https://yt-dl.org/latest/youtube-dl -o /usr/bin/youtube-dl
sudo chmod 755 /usr/bin/youtube-dl
sudo youtube-dl -U
