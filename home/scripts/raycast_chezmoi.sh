#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Chezmoi
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 📟
# @raycast.packageName Chezmoi

# Documentation:
# @raycast.description Open and edit Chezmoi repo in VS Code
# @raycast.author Boye Sjo
# @raycast.authorURL github.com/boyesjo

# get chezmoi repo path 
chezmoi_repo_path=$(chezmoi source-path)/..

# open repo in VS Code
code "$chezmoi_repo_path" --wait --new-window

# apply changes
chezmoi apply

# exit with success
exit 0