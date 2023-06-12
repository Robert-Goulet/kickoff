#!/bin/bash
echo ".bash_history output (Last 20 lines)
tail -n 20 .bash_history

echo ".viminfo output" (Last 20 lines)
tail -n 20 .viminfo

coredumpctl --file user-0.journal
