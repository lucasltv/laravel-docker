#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/../" && pwd )"

if ps -eaf | grep -i "$DIR/artisan queue:work --tries=1" | grep -v grep > /dev/null
then
	echo "QUEUE:WORK DEFAULT já está rodando"
else
	php $DIR/artisan queue:work --tries=1 > /dev/null &
fi