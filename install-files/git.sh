if [ $(which git | grep git -c) -eq 0  ]
then
    sudo apt install git -y
else
    echo 'git already installed'
fi

git config --global user.email "$GITHUB_EMAIL"
git config --global user.name "$GITHUB_USER_NAME"

echo "$GITHUB_USER_NAME"
echo "$GITHUB_EMAIL"

# ssh-keygen -t ed25519 -C "$GITHUB_EMAIL"