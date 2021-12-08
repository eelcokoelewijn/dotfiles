# eelco does dotfiles

Your dotfiles are how you personalize your system. These are mine.

I was a little tired of having long alias files and everything strewn about
(which is extremely common on other dotfiles projects, too). That led to this
project being much more topic-centric. I realized I could split a lot of things
up into the main areas I used (Ruby, git, system libraries, and so on), so I
structured the project accordingly.

If you're interested in the philosophy behind why projects like these are
awesome, you might want to [read my post on the
subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## what's inside

A lot of stuff. Seriously, a lot of stuff. Check them out in the file browser
above and see what components may mesh up with you.
[Fork it](https://github.com/holman/dotfiles/fork), remove what you don't
use, and build on what you do use.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/install.sh**: Any file named `install.sh` is executed when you run `script/install`. To avoid being loaded automatically, its extension is `.sh`, not `.zsh`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## resources

- [dotfiles.github](https://dotfiles.github.io)

## install

### dependencies

Installed using `script/install` or while bootstrapping `script/bootstrap`.  
- [Homebrew](https://brew.sh), include in installer script.
- [rbenv](https://github.com/rbenv/rbenv), include in installer script.  Oh-my-zsh `rbenv` plugin provides `$PATH` setup.  
  - list all available versions: `rbenv install -l`
  - install a Ruby version: `rbenv install 2.7.1`
  - select the Ruby version: `rbenv global 2.7.1`
- [Oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)(theme: cloud); (plugins: git, rbenv, brew, common-aliases, vscode, swiftpm, direnv); see `oh-my-zsh/config.zsh`. `rbenv` plugin provides `$PATH` setup.
- [nodenv](https://github.com/nodenv/nodenv), include in installer script.
- [direnv](https://direnv.net), include in installer script. Setup handled by oh-my-zsh plugin.

### xcode

Xcode installer and version manager [xcode-install](https://github.com/xcpretty/xcode-install), include in installer script.
- `xcversion list` for xcode-install options, to install an Xcode version: `xcversion install "11.5"`.

### vim plugins

Installed using git-clone, see `vim/install.sh`.
- [auto-pairs](https://github.com/jiangmiao/auto-pairs)
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [vim-surround](https://github.com/tpope/vim-surround)
- [lightline](https://github.com/itchyny/lightline.vim)
- [rainbow](https://github.com/luochen1990/rainbow)

### get started

On macOS; first install the Developer tools:

```sh
xcode-select --install
```

```sh
git clone https://github.com/eelcokoelewijn/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane macOS
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## improvements

Zsh completion now works as expected; removed: `setopt complete_aliases` from `zsh/config.zsh`.
See [issue](https://github.com/ohmyzsh/ohmyzsh/issues/4064) for more information.

Supports symlinked dotfiles in sub-folder of `$HOME`. To add a folder include a dash(-) in the filename.
Example: `ssh-config.symlink`, gets `config` symlinked in `~/.ssh/config`.

## bugs

I want this to work for everyone; that means when you clone it down it should
work for you even though you may not have `rbenv` installed, for example. That
said, I do use this as _my_ dotfiles, so there's a good chance I may break
something if I forget to make a check for a dependency.

If you're brand-new to the project and run into any blockers, please
[open an issue](https://github.com/holman/dotfiles/issues) on this repository
and I'd love to get it fixed for you!

## thanks

I forked [Ryan Bates](http://github.com/ryanb)' excellent
[dotfiles](http://github.com/ryanb/dotfiles) for a couple years before the
weight of my changes and tweaks inspired me to finally roll my own. But Ryan's
dotfiles were an easy way to get into bash customization, and then to jump ship
to zsh a bit later. A decent amount of the code in these dotfiles stem or are
inspired from Ryan's original project.
