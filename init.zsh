() {
  local prefix cmd
  for prefix in /opt/homebrew /usr/local /home/linuxbrew/.linuxbrew; do
    if [[ -e ${prefix}/bin/brew ]]; then
      cmd=${prefix}/bin/brew
      break
    fi
  done
  if [[ -z ${cmd} ]] return 1
  if [[ ! ( -s ${1} && ${1} -nt ${cmd} ) ]]; then
    ${cmd} shellenv >! ${1} || return 1
    zcompile -UR ${1}
  fi
  source ${1}
} ${0:h}/brew-shellenv.zsh || return 1

if (( ! ${fpath[(Ie)${HOMEBREW_PREFIX}/share/zsh/site-functions]} )); then
  fpath=(${HOMEBREW_PREFIX}/share/zsh/site-functions ${fpath})
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

# Casks do not work on Linux
if [[ ${OSTYPE} == darwin* ]]; then
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
fi
