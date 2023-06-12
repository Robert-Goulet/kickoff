#!/bin/bash

echo "Output of Notable Hidden Dot Files and XDG Base Directories" 

#.bashhistory: history of shell commands typed by user
echo "Last 30 shell commands typed by user"
stat ~/.bash_history
tail -n 30 ~/.bash_history

#.ssh/: secure shell configuration, keys, and lists of known hosts visited
echo "SSH configuration, keys, and list of known hosts visited"
stat ~/.ssh/
tail -n 20 ~/.ssh/
if [ -s ~/.ssh/ ]; then
  echo "The file is not empty"
else
  echo "The file is empty"
fi

#.viminfo: search and command history, traces of vim-edited files
echo "Last 30 vim-edited files"
stat ~/.viminfo
tail -n 30 ~/.viminfo
if [ -s ~/.viminfo ]; then 
 echo "The file is not empty" 
else
 echo "The file is empty"
fi

#wget-hsts: list of wget hosts visited with timestamps
echo "Last 30 wget hosts visited"
stat ~/.wget-hsts
tail -n 30 ~/.wget-hsts
if [ -s ~/.wget-hsts ]; then 
 echo "The file is not empty"
else
 echo "The file is empty"
fi

#.forward: files containing email addresses for auto forwarding
echo "Last 30 files containing email addresses for auto-forwarding"
stat ~/.forward
tail -n 30 ~/.forward
if [ -s ~/.forward ]; then 
 echo "The file is not empty"
else 
  echo "The file is empty"
fi
 
#.mozilla/: Firefox configuration, cookies, bookmarks, browsing history, and plug-ins
echo "Last 30 Firefox configuration, cookies, bookmarks, browsing history, and plug-ins"
stat ~/.mozilla/
tail -n 30 ~/.mozilla/
if [ -s ~/.mozilla/ ]; then
 echo "The file is not empty"
else
 echo "The file is empty"
fi
  
#.john/: John the Ripper password-cracking history with discovered passwords
echo "John the Ripper password-cracking history with discovered passwords"
stat ~/.john/
cat ~/.john/
if [ -s ~/.john/ ]; then
 echo "The file is not empty"
else
 echo "The file is empty"
fi

#mimeapps.list: Default applications
echo "Default Applications List (Limit: 50)"
stat ~/.config/mimeapps.list
cat -n 50 ~/.config/mimeapps.list

#.apvlvinfo: Contains a history of PDFs viewed using the apvlv PDF viewer
echo "History of PDFs viewed using the apvlv PDF viewer (Limit 30)"
tail -n 30 ~/.apvlvinfo
if [ -s ~/.apvlvinfo ] then
  echo "The file is not empty"
else
  echo "The file is empty"
fi

##Additional actions:
#cat ~/.cache/ 
#cat ~/.config/

echo "Contents of ~/Downloads Directory"
stat ~/Downloads
ls -lah ~/Downloads



