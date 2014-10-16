#!/bin/bash
if [ -z $1 ]; then
    echo "Specify a subdirectory of msgscrape"
    exit 1;
fi

dir=$1
if [ $dir == 'scrpxbsvc' ]; then
    dir=pcs_xb_mapping/$dir
elif [ $dir == 'scrpxbdb' ]; then
    dir=pcs_xb_mapping/db
fi

eval cd ~/mbig/scrape.git/msgscrape/$dir