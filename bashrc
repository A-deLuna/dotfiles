#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

source /usr/share/doc/pkgfile/command-not-found.bash

if ! pgrep -u $USER ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval $(<~/.ssh-agent-thing)
fi
ssh-add -l >/dev/null || alias ssh='ssh-add -l >/dev/null || ssh-add && unalias ssh; ssh'

alias vim='nvim'
alias g++11='g++ -std=c++11'

function play {
        # Skip DASH manifest for speed purposes. This might actually disable
        # being able to specify things like 'bestaudio' as the requested format,
        # but try anyway.
        # Get the best audio that isn't WebM, because afplay doesn't
        # support it.
        # Use "$*" so that quoting the requested song isn't
        # necessary.
        youtube-dl --default-search=ytsearch: \
                   --youtube-skip-dash-manifest \
                   --output="${TMPDIR:-/tmp/}%(title)s-%(id)s.%(ext)s" \
                   --restrict-filenames \
                   --format="bestaudio[ext!=webm]" \
                   --exec=mocp "$*"
}

export PATH=$HOME/bin:$PATH
