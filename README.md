# Vagrant Sudo Rsync

[![Gem](https://img.shields.io/gem/v/vagrant-sudo-rsync.svg)](https://rubygems.org/gems/vagrant-sudo-rsync)
[![Gem](https://img.shields.io/gem/dt/vagrant-sudo-rsync.svg)](https://rubygems.org/gems/vagrant-sudo-rsync)
[![Dependency Status](https://gemnasium.com/badges/github.com/TypistTech/vagrant-sudo-rsync.svg)](https://gemnasium.com/github.com/TypistTech/vagrant-sudo-rsync)
[![license](https://img.shields.io/github/license/TypistTech/vagrant-sudo-rsync.svg)](https://github.com/TypistTech/vagrant-sudo-rsync/blob/master/LICENSE)
[![Donate via PayPal](https://img.shields.io/badge/Donate-PayPal-blue.svg)](https://www.typist.tech/donate/sunny/)
[![Hire Typist Tech](https://img.shields.io/badge/Hire-Typist%20Tech-ff69b4.svg)](https://www.typist.tech/contact/)

Copy files from/to a Vagrant VM with sudo and necessary SSH config

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Installation](#installation)
- [Usage](#usage)
- [Support!](#support)
  - [Donate via PayPal *](#donate-via-paypal-)
  - [Why don't you hire me?](#why-dont-you-hire-me)
  - [Want to help in other way? Want to be a sponsor?](#want-to-help-in-other-way-want-to-be-a-sponsor)
- [Feedback](#feedback)
- [Change log](#change-log)
- [Author Information](#author-information)
- [Contributing](#contributing)
- [License](#license)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Installation

```bash
$ vagrant plugin install vagrant-sudo-rsync
```

## Usage

```bash
# General
## This is equivalent to $ rsync --rsh=<automatically determined> --rsync-path='sudo rsync' [OPTION] SRC DEST
$ vagrant sudo-rsync [OPTION] SRC DEST

# Synchronizing from local to remote
$ vagrant sudo-rsync [OPTION] <some_local_file_or_dir> :<somewhere_on_the_vm>

# Synchronizing from remote to local
$ vagrant sudo-rsync [OPTION] :<somewhere_on_the_vm> <some_local_file_or_dir>

# Real life example
# Pulling /etc/nginx/ssl from remote to local desktop
$ vagrant sudo-rsync -av --delete --info=NAME :/etc/nginx/ssl ~/Desktop
receiving incremental file list
ssl/
ssl/dhparams.pem
ssl/www.example.com.cert
ssl/www.example.com.key

sent 85 bytes  received 3,469 bytes  7,108.00 bytes/sec
total size is 3,186  speedup is 0.90
```

- Prefix remote paths with colon (`:`)
- `--rsh` (or `-e`) is automatically determined by `$ vagrant ssh-config` automatically
- `--rsync-path` is set to `sudo rsync`
- Anything after `$ vagrant sudo-rsync` is passed to `$ rsync`
- Never specific `--rsh`, `-e` or `--rsync-path`

## Support!

### Donate via PayPal [![Donate via PayPal](https://img.shields.io/badge/Donate-PayPal-blue.svg)](https://www.typist.tech/donate/vagrant-sudo-rsync/)

Love Vagrant Sudo Rsync? Help me maintain it, a [donation here](https://www.typist.tech/donate/vagrant-sudo-rsync/) can help with it.

### Why don't you hire me?

Ready to take freelance WordPress jobs. Contact me via the contact form [here](https://www.typist.tech/contact/) or, via email [info@typist.tech](mailto:info@typist.tech)

### Want to help in other way? Want to be a sponsor?

Contact: [Tang Rufus](mailto:tangrufus@gmail.com)

## Feedback

**Please provide feedback!** We want to make this library useful in as many projects as possible.
Please submit an [issue](https://github.com/TypistTech/vagrant-sudo-rsync/issues/new) and point out what you do and don't like, or fork the project and make suggestions.
**No issue is too small.**

## Change log

Please see [CHANGELOG](./CHANGELOG.md) for more information on what has changed recently.

## Author Information

[Vagrant Sudo Rsync](https://github.com/TypistTech/vagrant-sudo-rsync) is a [Typist Tech](https://www.typist.tech) project and maintained by [Tang Rufus](https://twitter.com/Tangrufus), freelance developer for [hire](https://www.typist.tech/contact/).

Full list of contributors can be found [here](https://github.com/TypistTech/vagrant-sudo-rsync/graphs/contributors).

## Contributing

Please see [CODE_OF_CONDUCT](./CODE_OF_CONDUCT.md) for details.

## License

[Vagrant Sudo Rsync](https://github.com/TypistTech/vagrant-sudo-rsync) is released under the [MIT License](https://opensource.org/licenses/MIT).
