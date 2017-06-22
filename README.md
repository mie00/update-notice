# Update Notice

Update notice is a package to make a standard way of communication between open source developers for breaking changes.

The idea is to use a file called `UPDATENOTICE` inside code repos, this repo has a hook to display the added lines to when moving between versions.

So if a version is having some breaking changes, a required lib for building or a need to update dependencies. This piece of information is to be included in `UPDATENOTICE` file, so that whoever, pulls or checkouts to this version or a latter version will be notified.


## Installation

```bash
git clone https://github.com/mie00/update-notice
cd update-notice
./install.sh
```

## TODO

Add support for Subversion, Mercurial and other VCSs.

## License

[MIT](LICENSE)

Copyright © 2017 [Mohamed Elawadi](https://github.com/mie00)
