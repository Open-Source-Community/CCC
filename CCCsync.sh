#!/usr/bin/env bash

commitMessage="$(zenity --entry --text='What did you change?')"
if [[ $? -eq 1 ]]; then
	# cancel button pressed
	return
fi

git add . && git commit -m "$commitMessage"
git pull
git push
