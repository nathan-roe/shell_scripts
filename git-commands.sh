#!/bin/bash
function hello()
{
    git switch $1
    git fetch origin $1
    git pull origin $1
    
    branch=$(git symbolic-ref --short HEAD)
    ocd = "! \"$1\" && git pull origin \"$1\""
	ocd-reset = "!git switch \"$1\" && git ocd \"$1\" && git reset --hard origin/\"$1\" #"
	# ocd-new-branch = "!git ocd-reset \"$1\" && git checkout -b test_branch_1"
	# commit-push = "!git ocd "\$1\" && git add . && git commit -m "\$2\" && git push origin/"
    echo $branch

    echo $1
}
hello 2