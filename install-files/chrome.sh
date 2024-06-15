# sudo apt update
# sudo apt upgrade
if [ $(command -v google-chrome | grep chrome -c) ]
then
    echo 'chrome is already installed'
elif [ $(ls | grep google-chrome -c) -eq 0 ]
then
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    echo 'chrome package not found, downloading it to install'
    rm google-chrome-stable_current_amd64.deb
else
    echo 'chrome package found, installing it instead of downloading it'
    sudo dpkg -i google-chrome-stable_current_amd64.deb
fi
