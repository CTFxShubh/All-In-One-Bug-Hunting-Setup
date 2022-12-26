echo "Special Thanks and credits to Nahamsec" 
#Important updates
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get full-upgrade -y
sudo apt-get install python3-pip -y
sudo apt-get install git -y
sudo apt-get autoremove -y

#Setup of GO lang
if [[ -z "$GOPATH" ]];then
echo "It looks like go is not installed, would you like to install it now"
					LATEST_GO_VERSION="$(curl --silent https://go.dev/VERSION?m=text)";
					echo "Installing Golang"
					wget https://golang.org/dl/${LATEST_GO_VERSION}.linux-amd64.tar.gz
					sudo tar -xvf ${LATEST_GO_VERSION}.linux-amd64.tar.gz
					sudo mv go /usr/local
					export GOROOT=/usr/local/go
					export GOPATH=$HOME/go
					export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
					echo 'export GOROOT=/usr/local/go' >> ~/.bashrc
					echo 'export GOPATH=$HOME/go'	>> ~/.bashrc			
					echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bashrc	
					source ~/.bashrc
					sleep 1
fi

#Directory to store Weapons 
echo "Making a directory to Store your weapons"
mkdir ~/Weapons
cd ~/Weapons/

#Installing Sublister 
echo "Installing Sublist3r"
sudo git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r*
pip install -r requirements.txt
cd ~/Weapons/
echo "A bullet called Sublist3r is loaded"

#Lazyrecon
echo "Installing lazyrecon"
sudo git clone https://github.com/nahamsec/lazyrecon.git
cd ~/Weapons/
echo "A bullet called Lazyrecon is loaded"

#Waybackurls
echo "Installing waybackurls"
go install github.com/tomnomnom/waybackurls@latest
echo "A bullet called waybackurls is loaded"

#sqlmap
echo "Installing sqlmap"
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
cd ~/Weapons/
echo "A bullet called sqlmap is loaded"

#ffuf
echo "Installing ffuf"
go install github.com/ffuf/ffuf@latest
echo "A bullet called ffuf is loaded"

#nuclei
echo "Installing nuclei"
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
echo "A bullet called nuclei is loaded"

#amass
echo "Installing amass"
go install -v github.com/OWASP/Amass/v3/...@master
echo "A bullet called amass is loaded"

#dirsearch
echo "Installing dirsearch"
git clone https://github.com/maurosoria/dirsearch.git
cd ~/Weapons/
echo "A bullet called dirsearch is loaded"

#wpscan
echo "Installing wpscan"
git clone https://github.com/wpscanteam/wpscan.git
cd wpscan*
sudo gem install bundler && bundle install --without test
cd ~/Weapons/
echo "A bullet called wpscan is loaded"

#nmap
echo "Installing nmap"
sudo apt-get install -y nmap
cd ~/Weapons/
echo "A bullet called nmap is loaded"

#httprobe
echo "Installing httprobe"
go install github.com/tomnomnom/httprobe @latest
echo "A bullet called httprobe is loaded"

#httpx
echo "Installing httpx"
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
echo "A bullet called httpx is loaded"

#gobuster
echo "Installing gobuster"
go install github.com/OJ/gobuster/v3@latest
echo "A bullet called gobuster is loaded"

#gau
echo "Installing gau"
go install github.com/lc/gau/v2/cmd/gau@latest
echo "A bullet called gau is loaded"

#assetfinder
echo "Installing assetfinder"
go get install github.com/tomnomnom/assetfinder@latest
echo "A bullet called assetfinder is loaded"

echo "Installing dnscan"
sudo git clone https://github.com/rbsec/dnscan.git
cd dnscan*
pip install -r requirements.txt
cd ~/Weapons/
echo "A bullet called dnscan is loaded"

#SecList
echo "Downloading the root of all hunting SecList"
git clone https://github.com/danielmiessler/SecLists.git
cd ~/Weapons/
echo "The final bullet SecList is loaded"


echo "Thanks for using this script :) Keep Learning and Keep Hacking ;)"