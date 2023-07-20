#!/bin/bash
project=${1}
branch=${2}

project_dir="$(basename ${project} .git)"

if [[ -z "${project}" ]]; then 
    echo "Error: Git project is not specified"
    exit
fi

clone_project() {
    if [[ ! -d "/home/bob/git/${project_dir}" ]]; then 
        cd /home/bob/git/
        git clone ${project}
       
    fi
}

git_checkout () {
    cd "${project_dir}"
    git checkout "${branch}"
}

find_files() {
  find . -type f | wc -l
}
clone_project
find_files