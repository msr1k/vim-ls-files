# Vim ls-files plugin

A very simple file selection interface for Vim

## USAGE

### Open Selection Interface

    :LsFilesOpen

To open desired file, type `gf` or `<cr>` on the line of it.

#### Restrictions

This plugin currently supports files under git repository.

#### Note

`:LsFilesOpen` simply opens file named `.ls-files.lff`.  
This file is automatically created by following command if it does not exist.

    :!git ls-files > .ls-files.lff`

### Update

Needs to update with command below after you add or delete or rename or something about file(s).

    :LsFilesUpdate

#### LISENCE

MIT
