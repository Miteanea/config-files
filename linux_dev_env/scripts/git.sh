gacm() {
    git ad
    git cm "$1"
}


gbsp(){
    devBranch=$(git rev-parse --abbrev-ref HEAD)
    git s develop;
    git pl;
    git s test;
    git pl;
    git s $devBranch;
    git rebase develop;
    git ps -u origin $devBranch
}