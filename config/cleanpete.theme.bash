#!/usr/bin/env bash

prompt_setter() {
  # Save history
  history -a
  history -c
  history -r

  # if [ "$(whoami)" = root ]; then no_color=$red; else no_color=$blue; fi
  PS1="(\t) $(scm_char) [$blue\u$reset_color] $yellow\W${reset_color}$(scm_prompt_info)$(ruby_version_prompt)$reset_color $ "
  PS2='> '
  PS4='+ '
}

PROMPT_COMMAND=prompt_setter

SCM_THEME_PROMPT_DIRTY=" ✗"
SCM_THEME_PROMPT_CLEAN=" ✓"
SCM_THEME_PROMPT_PREFIX=" ("
SCM_THEME_PROMPT_SUFFIX=")"
RVM_THEME_PROMPT_PREFIX=" ("
RVM_THEME_PROMPT_SUFFIX=")"
