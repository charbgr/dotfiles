# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/vasilischaralampakis/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git)

source $ZSH/oh-my-zsh.sh

for file in ~/.{aliases,git-sync,git-branchpurge}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"
export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/vasilischaralampakis/.sdkman"
[[ -s "/Users/vasilischaralampakis/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/vasilischaralampakis/.sdkman/bin/sdkman-init.sh"

alias work="cd ~/Development/guest-app-android"
alias spotify="spotdl --ignore-ffmpeg-version $1"
alias runPRChecks="./gradlew spotlessKotlinCheck && ./gradlew detektAll && ./gradlew :app:lintTenantDebug"
alias aws-creds='source ~/aws-get-session.sh'
alias device-screen-share="scrcpy"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
