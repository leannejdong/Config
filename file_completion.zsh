#!/usr/bin/env zsh

# Function to generate file and directory completions
_file_completion() {
    local word=${LBUFFER}${RBUFFER}
    local path=`echo $word | rev | cut -d/ -f2- | rev`
    local completions=`ls -1d /home/*/$path* 2>/dev/null`
    reply=($completions)
}

# Register the completion function
compctl -K _file_completion -f
