## Files in this Repository

# `./bin/linux.sh`:
	This script sets up the Linux environment by creating a `.TRASH` directory, changing the name of `.vimrc` to `.bup vimrc` if it exists, and overwriting `~/.vimrc` with `etc/vimrc`. It also adds the line `source ~/.dotfiles/etc/bashrc custom` to the end of `.bashrc`.
# `./bin/cleanup.sh`:
	This script undoes everything that `linux.sh` did, by removing the `.vimrc` file, removing the `source ~/.dotfiles/etc/bashrc custom` line from `.bashrc`, and removing the `.TRASH` directory.
# `Makefile`:
	Has two targets: linux and clean. The linux target will run the ‘./bin/linux.sh’ script. The clean target should run your ‘./bin/cleanup.sh’ scrip.
# `etc/vimrc`:
	This file contains custom settings for the Vim text editor, such as enabling syntax highlighting and setting the tab width to 4 spaces.
# `~/.bashrc`:
	Sets some environment variables, defines some aliases for commonly used commands, and includes some functions.
# `~/.vimrc`:
	This file is created by the `linux.sh` script and overwritten with the contents of `etc/vimrc`. It contains the same custom settings as `etc/vimrc`.

