# Ensure brew is available
if (( ! ${+commands[brew]} )); then
  return 1
fi

fpath=(/opt/homebrew/share/zsh/site-functions(N) /home/linuxbrew/.linuxbrew/share/zsh/site-functions(N) ${fpath})

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
