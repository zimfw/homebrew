if (( ${+HOMEBREW_PREFIX} )); then
  # brew shellenv script is not idempotent. See https://github.com/Homebrew/brew/pull/15527
  typeset -gU fpath=(${HOMEBREW_PREFIX}/share/zsh/site-functions ${fpath})
  typeset -gU path=(${HOMEBREW_PREFIX}/bin ${HOMEBREW_PREFIX}/sbin ${path})
else
  () {
    local prefix cmd
    for prefix in /opt/homebrew /usr/local /home/linuxbrew/.linuxbrew; do
      if [[ -e ${prefix}/bin/brew ]]; then
        cmd=${prefix}/bin/brew
        break
      fi
    done
    if [[ -z ${cmd} ]] return 1
    # Do not cache because brew shellenv script can contain an explicit PATH value. ¯\_(ツ)_/¯
    # See https://github.com/Homebrew/brew/pull/18188
    eval "$(${cmd} shellenv)" || return 1
  } || return 1
fi

#
# Aliases
#

# Homebrew
alias brewa='brew autoremove'
alias brewc='brew cleanup'
alias brewC='brew cleanup -s'
alias brewd='brew doctor --verbose'
alias brewe='brew edit --formula'
alias brewi='brew info --formula'
alias brewI='brew install --formula'
alias brewl='brew list --formula'
alias brewL='brew leaves'
alias brewo='brew outdated --formula'
alias brewr='brew reinstall --formula'
alias brews='brew search --formula'
alias brewS='brew services'
alias brewu='brew update'
alias brewU='brew upgrade --formula'
alias brewx='brew uninstall --formula'
alias brewX='brew uninstall --formula --force'

# Homebrew Cask
alias caske='brew edit --cask'
alias caski='brew info --cask'
alias caskI='brew install --cask'
alias caskl='brew list --cask'
alias casko='brew outdated --cask'
alias caskr='brew reinstall --cask'
alias casks='brew search --cask'
alias caskU='brew upgrade --cask'
alias caskx='brew uninstall --cask'
alias caskX='brew uninstall --cask --force'
alias caskz='brew uninstall --cask --zap'
