homebrew
========

[zim-module](https://github.com/zimfw/zimfw) for [homebrew](https://brew.sh/).

To ensure that subsequent modules, which rely on binaries added via Homebrew, operate as intended, load the Homebrew module at the beginning of your `.zimrc` file.
After including the module, you can safely discard the Homebrew evaluation call from your .zshrc file.

## Features

- Defines Homebrew aliases.
- Adds the Homebrew-managed `zsh/site-functions` path into your `fpath`.
- Pre-compiles the `brew shellenv` command to eliminate recurring eval calls.

## Aliases

The alias definitions can be disabled by setting the variable `ZIM_HOMEBREW_ALIASES` to `false`.

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
