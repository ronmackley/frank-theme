# Requires: git and git-prompt plugins.
# Set prompt to show useful compact things

# Put an optional chevron in front of the git stats iff there is a git status.
git_prompt_status() {
  local cb=$(git_current_branch)
  if [ -n "$cb" ]; then
    echo "%{$fg[magenta]%}>$(git_super_status)"
  fi

}


# unset RPROMPT so the prompt is only inline 
RPROMPT=''
# unset PREFIX, SUFFIX, and SEPARATIOR
ZSH_THEME_GIT_PROMPT_PREFIX=''
ZSH_THEME_GIT_PROMPT_SUFFIX=''
ZSH_THEME_GIT_PROMPT_SEPARATOR=':'


# Include date, optional git state, optional return of last command, user@host, root or mortal, parser status
PROMPT='$fg[blue]>%B%D{%C%y-%m-%dT%H:%M:%S}%b$fg[red]$(git_prompt_status)$fg[red]%B%(?..>%?)%b$fg[white]>%B%n@%m:%~%(!.#.$)%b %_$reset_color'
PROMPT='%{$fg[blue]%}>%D{%C%y-%m-%dT%H:%M:%S%Z}$(git_prompt_status)%{$fg[red]%}%(?..>%?)%{$fg[green]%}>%n@%m:%~%(!.#.$) %_%{$reset_color%}'

#
# RVM component of prompt
ZSH_THEME_RUBY_PROMPT_PREFIX="%{$fg[red]%}["
ZSH_THEME_RUBY_PROMPT_SUFFIX="]%{$reset_color%}"

