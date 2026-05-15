fpath=($HOME/.homesick/repos/homeshick/completions $fpath)
[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'

setopt histappend
export PATH=$HOME/.local/bin:$PATH
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(devbox global shellenv)"
eval "$(direnv hook zsh)"
eval "`fnm env --use-on-cd --version-file-strategy=recursive --corepack-enabled`"
autoload -Uz compinit
compinit
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash

# Generate a slack-friendly PR summary. Will still need to format (cmd + shift + f) after pasting, and remove the Github preview
prslack () {
	local title=$(gh pr view --json title --jq .title)
	local url=$(gh pr view --json url --jq .url)
	local repo_name="$(git remote get-url origin | grep 'ramp/' | cut -d/ -f2 | sed 's/.git.*$/ /')"
  	local diff_stats=$(git diff $(git merge-base HEAD $(gt parent)) --shortstat | cut -d ',' -f 2,3 | sed -E 's/([0-9]+) insertions?\(\+\)/+\1/;s/, /\//;s/([0-9]+) deletions?\(-\)/-\1/;s/^ //')
	local result="[$title]($url) (${repo_name}$diff_stats)"
	echo "$result"
	pbcopy <<< $result
}
eval "$(fnm env --use-on-cd --shell zsh)"
alias history='history 1'

export PATH="$HOME/bin:$PATH"

[[ -f "$HOME/.cargo/env" ]] && . "$HOME/.cargo/env"
export PATH="$PATH:$HOME/code/intelligence-platform/bin"

[[ -f "$HOME/.zshrc.local" ]] && source "$HOME/.zshrc.local"
