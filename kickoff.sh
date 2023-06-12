#!/bin/bash
#.bashhistory: history of shell commands typed by user
echo "Last 20 shell commands typed by user"
tail -n 20 .bash_history

#.ssh/: secure shell configuration, keys, and lists of known hosts visited
echo "SSH configuration, keys, and list of known hosts visited"
tail -n 20 .ssh/
if [ -s .ssh/ ]; then
  echo "The file is not empty"
 else
  echo "The file is empty"
 fi

#.viminfo: search and command history, traces of vim-edited files
echo "Last 20 vim-edited files"
tail -n 20 .viminfo
if [ -s .viminfo ]; then 
  echo "The file is not empty" 
 else
  echo "The file is empty"
 fi

#wget-hsts: list of wget hosts visited with timestamps
echo "Last 20 wget hosts visited"
tail -n 20 .wget-hsts
if [ -s .viminfo ]; then 
  echo "The file is not empty"
 else
  echo "The file is empty"
 fi

#.forward: files containing email addresses for auto forwarding
echo "Last 20 files containing email addresses for auto-forwarding"
tail -n 20 .forward
if [ -s .forward ]; then 
  echo "The file is not empty"
 else 
  echo "The file is empty"
 fi
 
 #.mozilla/: Firefox configuration, cookies, bookmarks, browsing history, and plug-ins
 echo "Last 20 Firefox configuration, cookies, bookmarks, browsing history, and plug-ins"
 tail -n 20 .mozilla/
 if [ -s .mozilla/ ]; then
  echo "The file is not empty"
 else
  echo "The file is empty"
 fi
  
