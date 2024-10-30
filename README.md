# manpager

[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/Freed-Wu/manpager/main.svg)](https://results.pre-commit.ci/latest/github/Freed-Wu/manpager/main)
[![github/workflow](https://github.com/Freed-Wu/manpager/actions/workflows/main.yml/badge.svg)](https://github.com/Freed-Wu/manpager/actions)
[![codecov](https://codecov.io/gh/Freed-Wu/manpager/branch/main/graph/badge.svg)](https://codecov.io/gh/Freed-Wu/manpager)
[![DeepSource](https://deepsource.io/gh/Freed-Wu/manpager.svg/?show_trend=true)](https://deepsource.io/gh/Freed-Wu/manpager)

[![github/downloads](https://shields.io/github/downloads/Freed-Wu/manpager/total)](https://github.com/Freed-Wu/manpager/releases)
[![github/downloads/latest](https://shields.io/github/downloads/Freed-Wu/manpager/latest/total)](https://github.com/Freed-Wu/manpager/releases/latest)
[![github/issues](https://shields.io/github/issues/Freed-Wu/manpager)](https://github.com/Freed-Wu/manpager/issues)
[![github/issues-closed](https://shields.io/github/issues-closed/Freed-Wu/manpager)](https://github.com/Freed-Wu/manpager/issues?q=is%3Aissue+is%3Aclosed)
[![github/issues-pr](https://shields.io/github/issues-pr/Freed-Wu/manpager)](https://github.com/Freed-Wu/manpager/pulls)
[![github/issues-pr-closed](https://shields.io/github/issues-pr-closed/Freed-Wu/manpager)](https://github.com/Freed-Wu/manpager/pulls?q=is%3Apr+is%3Aclosed)
[![github/discussions](https://shields.io/github/discussions/Freed-Wu/manpager)](https://github.com/Freed-Wu/manpager/discussions)
[![github/milestones](https://shields.io/github/milestones/all/Freed-Wu/manpager)](https://github.com/Freed-Wu/manpager/milestones)
[![github/forks](https://shields.io/github/forks/Freed-Wu/manpager)](https://github.com/Freed-Wu/manpager/network/members)
[![github/stars](https://shields.io/github/stars/Freed-Wu/manpager)](https://github.com/Freed-Wu/manpager/stargazers)
[![github/watchers](https://shields.io/github/watchers/Freed-Wu/manpager)](https://github.com/Freed-Wu/manpager/watchers)
[![github/contributors](https://shields.io/github/contributors/Freed-Wu/manpager)](https://github.com/Freed-Wu/manpager/graphs/contributors)
[![github/commit-activity](https://shields.io/github/commit-activity/w/Freed-Wu/manpager)](https://github.com/Freed-Wu/manpager/graphs/commit-activity)
[![github/last-commit](https://shields.io/github/last-commit/Freed-Wu/manpager)](https://github.com/Freed-Wu/manpager/commits)
[![github/release-date](https://shields.io/github/release-date/Freed-Wu/manpager)](https://github.com/Freed-Wu/manpager/releases/latest)

[![github/license](https://shields.io/github/license/Freed-Wu/manpager)](https://github.com/Freed-Wu/manpager/blob/main/LICENSE)
[![github/languages](https://shields.io/github/languages/count/Freed-Wu/manpager)](https://github.com/Freed-Wu/manpager)
[![github/languages/top](https://shields.io/github/languages/top/Freed-Wu/manpager)](https://github.com/Freed-Wu/manpager)
[![github/directory-file-count](https://shields.io/github/directory-file-count/Freed-Wu/manpager)](https://github.com/Freed-Wu/manpager)
[![github/code-size](https://shields.io/github/languages/code-size/Freed-Wu/manpager)](https://github.com/Freed-Wu/manpager)
[![github/repo-size](https://shields.io/github/repo-size/Freed-Wu/manpager)](https://github.com/Freed-Wu/manpager)
[![github/v](https://shields.io/github/v/release/Freed-Wu/manpager)](https://github.com/Freed-Wu/manpager)

Colorize `man XXX`.

![man](https://github.com/Freed-Wu/manpager/assets/32936898/80d5163d-26c4-455a-9585-60e0bb947b84)

## Dependencies

This plugin will do nothing without dependencies.

- [bat](https://github.com/sharkdp/bat)
- [ansifilter](https://gitlab.com/saalen/ansifilter)

## Install

### deb

Download [`*.deb`](https://github.com/Freed-Wu/manpager/releases) firstly.

```sh
deb -i *.deb
```

### rpm

Download [`*.rpm`](https://github.com/Freed-Wu/manpager/releases) firstly.

```sh
rpm -i *.rpm
```

### [AUR](https://aur.archlinux.org/packages/sh-manpager)

```sh
yay -S sh-manpager
```

### [NUR](https://nur.nix-community.org/repos/freed-wu)

```sh
nix-env -iA nur.repos.Freed-Wu.manpager
```

### homebrew

```sh
brew tap Freed-Wu/manpager https://github.com/Freed-Wu/manpager
brew install manpager
```

## Configure

Add the following code to your `.bash_profile`, `.zprofile`, ...

```sh
eval "$(manpager)"
```

## Customize

You can define `$MANPAGER` to customize the colorization of `man XXX`.

Such as:

### Disable Paging

```sh
export MANPAGER='manpager --paging=never'
```

### Define `n` and `p` to Jump Forward and Backward Between Sections

```sh
export MANPAGER='manpager | less --pattern=^\\S+'
```

That is because `man XXX` looks like

```man
MAN(1)                        Manual pager utils                        MAN(1)

NAME
       man - an interface to the system reference manuals

SYNOPSIS
       man [man options] [[section] page ...] ...
       ...

DESCRIPTION
       man is the system's manual pager.  Each page argument given to man is
       ...
```

So we can search `^\S+` forward and backward to jump between the lines started
with `NAME`, `SYNOPSIS`, `DESCRIPTION`, etc.

### Force to Colorize `man XXX`

You can `man XXX | manpager` to force to colorize `man XXX`.

## Similar Projects

- [zsh-help](https://github.com/Freed-Wu/zsh-help): colorize `XXX --help`.
- [lesspipe](https://github.com/wofr06/lesspipe): colorize `less XXX` by
  `export LESSOPEN='|lesspipe.sh %s'`.
- [bat-extras](https://github.com/eth-p/bat-extras): provide a program named
  `batman` and user can `batman XXX` to get colorized `man XXX`.
  Right, you can `alias man=batman` to colorize `man XXX`.
  However:
  - Not every shell has aliases, such as `!man XXX` on `ptpython/ipython`
  - `man` has shell completions, `batman` doesn't have.

## Details under the Hood

There are two different realizations of `man`:

- [man-db](https://www.nongnu.org/man-db): the common `man` used by most distributions.
- [mandoc](http://mdocml.bsd.lv): the lightweight but not enough powerful `man`
  used by:
  - [Android Termux](https://termux.dev):
    <https://github.com/termux/termux-packages/issues/4781>
  - [Alpine Linux](https://alpinelinux.org/)
  - ...

So, our `manpager` must be compatible for both of them. There are some
differences between them:

- For `export MANPAGER="sh -c 'col -bx | bat -plman'"`:
  - man-db will split it to get `["sh", "-c", "col -bx | bat -plman"]`.
  - mandoc will split it to get
    `["sh", "-c", "'col", "-bx", "|", "bat", "-plman"]`. How terrible!
- For `MANPAGER='manpager --option' man foobar`:
  - man-db will execute `MANPAGER='' man foobar | manpager --option`. Yes,
    there exists a pipe.
  - mandoc will generate a temp file `/tmp/man.XXXX??????` which `?` is
    a random alphabet as the output of `man foobar`, then execute
    `manpager --option /tmp/man.XXXX??????`

So we use `[ -t 0 ]` to judge current `man` is which `man`, then wrap it.

## Related Projects

- [gentoo manpager](https://gitweb.gentoo.org/repo/gentoo.git/tree/app-text/manpager/files/manpager.c):
  add `-manpager` for `sys-apps/man-db` to avoid installing it
