#
#
# Entrypoint to clone a git repo 
#
#
rm -rf /home/runner/git/*
if [ $privateRepo == 1 ]
then
    echo "[git] Trying to clone the private repository!"
    GIT_ASKPASS=/git_password.sh git clone https://$GithubUsername@github.com/$GithubUsername/$GithubRepoName git
    cd git
    eval $startCommand
else
    echo "[git] Trying to clone the public repository!"
    git clone https://github.com/$GithubUsername/$GithubRepoName.git git
    cd git
    eval $startCommand
fi
