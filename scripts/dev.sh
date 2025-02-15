#!/bin/bash

if [ -z "$1" ]; then
  echo "Please provide a session name as an argument."
  exit 1
fi

SESSION_NAME=$1

tmux has-session -t "$SESSION_NAME" 2>/dev/null

# $? is the exit code of the last command
if [ $? != 0 ]; then
  tmux new-session -d -s "$SESSION_NAME"
  tmux send-keys -t "$SESSION_NAME" "f" C-m
  tmux split-window -h -p 25
  tmux select-pane -L
fi
tmux attach-session -t "$SESSION_NAME"