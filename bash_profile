# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=20000

eval "$(/opt/homebrew/bin/brew shellenv)"
brew_etc="$(brew --prefix)/etc" && [[ -r "${brew_etc}/profile.d/bash_completion.sh" ]] && . "${brew_etc}/profile.d/bash_completion.sh"

###########--ALIAS
alias dir_github_iestebanvi='cd /Users/A1431332/Library/CloudStorage/OneDrive-DeutscheTelekomAG/TDIRepos/GITHUB_iestebanvi'
alias dir_gitlab_tdi='cd /Users/A1431332/Library/CloudStorage/OneDrive-DeutscheTelekomAG/TDIRepos/GITLAB_tdi'
alias dir_tdi_customer='cd ~/OneDrive-DeutscheTelekomAG/TDICustomers/baremetalClusters'
alias ks='eval $(kubeselect select)'
alias ku='kubecolor'
#alias k='kubectl --context $KUBECTX'
alias k='kubeselect run -- '
alias kcscn='k config set-context $KUBECTX --namespace'
alias kcgc='k config get-contexts'
alias kgn='k get nodes'
alias kgp='k get pods'
alias kcuc='k config use-context'
alias kgpw='k get pod -o wide'
alias l='ls -lah'
####################

####################
export PYTHONPATH=$PYTHONPATH:/opt/homebrew/bin/python3

export __FG_BLACK=$(tput setaf 0);
export __FG_RED=$(tput setaf 1);
export __FG_GREEN=$(tput setaf 71); # Green
export __FG_ORANGE=$(tput setaf 166);
export __FG_YELLOW=$(tput setaf 228);
export __FG_BLUE=$(tput setaf 4);
export __FG_PURPLE="\[\033[0;35m\]" # Purple
export __FG_CYAN=$(tput setaf 6);
export __FG_WHITE=$(tput setaf 15);
export __FG_BOLD=$(tput bold);
export __FG_RESET=$(tput sgr0);

#source "/usr/local/etc/kubeps1/kube-ps1.sh"
source "/Users/A1431332/Library/CloudStorage/OneDrive-DeutscheTelekomAG/TDIRepos/GITHUB_iestebanvi/kube-ps1/kube-ps1.sh"
PS1='\h:\[$__FG_BOLD\]\[$__FG_GREEN\]\w\[$__FG_RESET\]$(kube_ps1)$\n→ '

source <(kubectl completion bash)
complete -o default -F __start_kubectl kubectl
