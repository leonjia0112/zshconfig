# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/peijia/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="awesome-patched"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git tmux zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
#export http_proxy=http://www-proxy.us.oracle.com:80
#export https_proxy=http://www-proxy.us.oracle.com:80
#export no_proxy='localhost,127.0.0.1,.oracle.com,.oracleiaas.com,.oraclecloud.com,.oraclecorp.com'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias ffsw="cd /Users/peijia/PGwork/ffsw"
alias ffswcp="cd /Users/peijia/PGwork/ffsw-control-plane"
alias shepherd="cd /Users/peijia/PGwork/fss-shepherd"
alias clearproxy="unset http_proxy https_proxy no_proxy"

export PATH=$PATH:/Users/peijia/Library/Python/3.7/bin
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

alias resetyubi="ssh-add -e /usr/local/lib/opensc-pkcs11.so; ssh-add -s /usr/local/lib/opensc-pkcs11.so"
alias gotolinux="ssh -p 2222 leojia@localhost"
alias tf="terraform"

alias update_commit="bash ~/PGwork/smart-tools/update-commit.sh"

jht_setenv() {
    /Users/peijia/PGwork/ffsw/deploy-v1/cloudresources/jht setenv id="$1" -X
}

export PATH=$PATH:/usr/local/go/bin


# Yubikey handler
reload-ssh() {
   ssh-add -e /usr/local/lib/opensc-pkcs11.so >> /dev/null
   if [ $? -gt 0 ]; then
       echo "Failed to remove previous card"
   fi
   ssh-add -s /usr/local/lib/opensc-pkcs11.so
}


export PATH="/usr/local/opt/sqlite/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/sqlite/lib"                                                                       │
# export CPPFLAGS="-I/usr/local/opt/sqlite/include"                                                                  │
                                                            
export PATH="/usr/local/opt/python@3.7/bin:$PATH"                                
#For compilers to find python@3.7 you may need to set: 
#export LDFLAGS="-L/usr/local/opt/python@3.7/lib" 
#For pkg-config to find python@3.7 you may need to set:            
#export PKG_CONFIG_PATH="/usr/local/opt/python@3.7/lib/pkgconfig" 

alias mfo="java -jar /Users/peijia/PGwork/mfo/mfo-cli.jar"
alias sms="java -jar /Users/peijia/PGwork/sms-cli/secret-service-cli-0.0.320.jar"
alias intellijserver="echo http://slcibhf.us.oracle.com:1111/"

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh	

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/peijia/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)


alias vm-2022-09-23-1="echo \'user is pgbot1, pw is pgbot.\'"

alias ssh-vm-leo-2022-09-23-1="ssh -p 50000 pgbot1@localhost"
