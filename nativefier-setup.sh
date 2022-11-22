#!/bin/bash

if [[ "$OSTYPE" == "darwin"* ]]; then
  DISTDIR=/Applications/r809-desktop-environment
  WORKDIR=$(mktemp -d)
  mkdir $DISTDIR
  cp nativefier-config/* $WORKDIR/
  cd $WORKDIR
  pwd

  # TODO: Make concurrent

  curl 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Google_Tasks_2021.svg/521px-Google_Tasks_2021.svg.png' -o tasks-raw.png &&
  convert tasks-raw.png -gravity center -background none -extent 527x527 tasks.png
  nativefier 'https://tasks.google.com/embed/?origin=https://calendar.google.com&fullWidth=1' -i tasks.png -n 'Google Task(wrapped)' --honest --single-instance --darwin-dark-mode-support --bookmarks-menu task.json --title-bar-style hidden --outputDirectory .

  nativefier 'https://gmail.com/' --honest --single-instance

  nativefier 'https://keep.google.com' -n 'Google Keep' --honest --single-instance --inject keep.css --title-bar-style hidden

  nativefier 'https://drive.google.com/drive/u/0/' --honest --single-instance

  nativefier 'https://calendar.google.com/' --honest --single-instance -n 'Google Calendar' --strict-internal-urls --title-bar-style hidden

  nativefier 'https://www.google.com.tw/maps/' -n 'Google Map'

  # wait < <(jobs -p)

  pwd
  ls $WORKDIR
  find $WORKDIR -maxdepth 2 -name '*.app'
  find $WORKDIR -maxdepth 2 -name '*.app' -exec cp -r {} $DISTDIR \;

else
  echo current only for macos
fi
