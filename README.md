homebrew
========

Sets up the Zsh shell integration for Homebrew.

Also defines Homebrew aliases.

The following can be removed from your `~/.zshrc`, since this module will
already take care of it:

    eval "$(/path/to/brew shellenv)"

Aliases
-------

### Homebrew

  * `brewa` auto uninstalls formulae that are no longer needed.
  * `brewc` cleans the cache.
  * `brewC` scrubs the cache, including downloads for the latest versions.
  * `brewd` checks your system for potential problems.
  * `brewe` edits given formula.
  * `brewi` shows information about given formula.
  * `brewI` installs given formula.
  * `brewl` lists installed formulae.
  * `brewL` lists installed formulae that don't depend on other installed formula.
  * `brewo` lists outdated installed formulae.
  * `brewr` reinstalls given formula.
  * `brews` performs a search of formula names.
  * `brewS` manages background services with macOS' launchctl daemon manager.
  * `brewu` updates Homebrew and all formulae.
  * `brewU` upgrades outdated and unpinned formulae.
  * `brewx` uninstalls a given formula.
  * `brewX` deletes all installed versions of given formula.

### Homebrew Cask

  * `caske` edits given cask.
  * `caski` shows information about given cask.
  * `caskI` installs given cask.
  * `caskl` lists installed casks.
  * `casko` lists outdated installed casks.
  * `caskr` reinstalls given cask.
  * `casks` performs a search of cask tokens.
  * `caskU` upgrades given cask or all outdated casks, if none given.
  * `caskx` uninstalls given cask.
  * `caskX` uninstalls even if given cask does not appear to be present.
  * `caskz` zaps all files associated with given cask.

Requirements
------------

This module should be sourced *first*, before any other, so commands installed
via Homebrew are available to the other modules when needed.
