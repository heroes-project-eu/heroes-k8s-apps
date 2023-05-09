#!/usr/bin/env bash

## Helm: create package and push into private repository

if [ $# -ne 2 ]; then
    echo "Usage: helm_pkg_push.sh <dir> <repo>"
    echo "Examples: ./helm_pkg_push.sh opensearch-dashboards opensearch-helm"
    echo "          ./helm_pkg_push.sh opensearch opensearch-helm"
    exit 1
fi

chart_dir=$1
helm_repo=$2

chart_pkg=$(helm package $chart_dir | awk -F"/" '{print $NF}')
helm cm-push $chart_pkg $helm_repo

#optionally
helm repo update
