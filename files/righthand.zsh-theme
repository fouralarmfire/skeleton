
function get_host {
	echo ' @'$(whoami)
}

PROMPT='> '
RPROMPT='$(git_prompt_info)%2~$(get_host)'

ZSH_THEME_GIT_PROMPT_DIRTY="(●)"
ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"
