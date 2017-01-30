# Vim ls-files plugin

A very simple file selection interface for Vim

## USAGE

### Open Selection Interface

    :LsFilesOpen

It simply opens file named `ls-files.lff`.
This file is automatically created by following command if it does not exist.

    :!git ls-files > ls-files.lff`

As you see, this plugin currently supports files under git repository.
And to open desired file, you typically should type `gf` command on the line of it.

### Update

Needs to update with command below after you add or delete or rename or something about file(s).

    :LsFilesUpdate

