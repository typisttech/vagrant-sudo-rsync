# Vagrant Sudo Rsync

[![Gem](https://img.shields.io/gem/v/vagrant-sudo-rsync.svg)](https://rubygems.org/gems/vagrant-sudo-rsync)
[![Gem](https://img.shields.io/gem/dt/vagrant-sudo-rsync.svg)](https://rubygems.org/gems/vagrant-sudo-rsync)
[![license](https://img.shields.io/github/license/TypistTech/vagrant-sudo-rsync.svg)](https://github.com/TypistTech/vagrant-sudo-rsync/blob/master/LICENSE)
[![Donate via PayPal](https://img.shields.io/badge/Donate-PayPal-blue.svg)](https://www.typist.tech/donate/vagrant-sudo-rsync/)
[![Hire Typist Tech](https://img.shields.io/badge/Hire-Typist%20Tech-ff69b4.svg)](https://www.typist.tech/contact/)

Copy files from/to a Vagrant VM with sudo and necessary SSH config

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Installation](#installation)
- [Usage](#usage)
  - [It looks awesome. Where can I find some more goodies like this?](#it-looks-awesome-where-can-i-find-some-more-goodies-like-this)
  - [I love this project. Where can I give a :star::star::star::star::star: review?](#i-love-this-project-where-can-i-give-a-starstarstarstarstar-review)
- [Support!](#support)
  - [Donate](#donate)
  - [Why don't you hire me?](#why-dont-you-hire-me)
  - [Want to help in other way? Want to be a sponsor?](#want-to-help-in-other-way-want-to-be-a-sponsor)
- [Feedback](#feedback)
- [Change Log](#change-log)
- [Security](#security)
- [Credits](#credits)
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
$ vagrant sudo-rsync [OPTION] SRC [DEST]

## Synchronizing from local to remote
$ vagrant sudo-rsync [OPTION] <some_local_file_or_dir> :<somewhere_on_the_vm>

## Synchronizing from remote to local
$ vagrant sudo-rsync [OPTION] :<somewhere_on_the_vm> <some_local_file_or_dir>

# Real life example

## Listing all files under /etc/nginx/ssl on remote
$ vagrant sudo-rsync :/etc/nginx/ssl/
drwx------          4,096 2017/09/12 00:32:17 .
-rw-r--r--            424 2017/09/12 00:30:48 dhparams.pem
-rw-r--r--          1,054 2017/09/12 00:32:17 www.example.cert
-rw-r--r--          1,708 2017/09/12 00:32:17 www.example.key

## Pulling /etc/nginx/ssl from remote to local desktop
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

### It looks awesome. Where can I find some more goodies like this?

* Articles on Typist Tech's [blog](https://typist.tech)
* [Tang Rufus' WordPress plugins](https://profiles.wordpress.org/tangrufus#content-plugins) on wp.org
* More projects on [Typist Tech's GitHub profile](https://github.com/TypistTech)
* Stay tuned on [Typist Tech's newsletter](https://typist.tech/go/newsletter)
* Follow [Tang Rufus' Twitter account](https://twitter.com/TangRufus)

### I love this project. Where can I give a :star::star::star::star::star: review?

Thanks! Glad you like it. It's important to let mw know this project is useful to somebody. Please consider:

- tweet something good with mentioning [@TypistTech](https://twitter.com/typisttech) and [@TangRufus](https://twitter.com/tangrufus)
- :star: this [Github repo](https://github.com/ItinerisLtd/vagrant-sudo-rsync)
- watch this [Github repo](https://github.com/ItinerisLtd/vagrant-sudo-rsync)
- write blog posts
- submit pull requests
- [donate](https://typist.tech/donate/)
- [hire me](https://typist.tech/contact/)

## Support!

### Donate

Love Vagrant Sudo Rsync? Help me maintain it, a [donation here](https://typist.tech/donation/) can help with it.

### Why don't you hire me?

Ready to take freelance WordPress jobs. Contact me via the contact form [here](https://typist.tech/contact/) or, via email [info@typist.tech](mailto:info@typist.tech)

### Want to help in other way? Want to be a sponsor?

Contact: [Tang Rufus](mailto:tangrufus@gmail.com)

## Feedback

**Please provide feedback!** We want to make this library useful in as many projects as possible.
Please submit an [issue](https://github.com/TypistTech/vagrant-sudo-rsync/issues/new) and point out what you do and don't like, or fork the project and make suggestions.
**No issue is too small.**

## Change Log

Please see [CHANGELOG](./CHANGELOG.md) for more information on what has changed recently.

## Security

If you discover any security related issues, please email [vagrant-sudo-rsync@typist.tech](mailto:vagrant-sudo-rsync@typist.tech) instead of using the issue tracker.

## Credits

[Vagrant Sudo Rsync](https://github.com/TypistTech/vagrant-sudo-rsync) is a [Typist Tech](https://typist.tech) project and maintained by [Tang Rufus](https://twitter.com/TangRufus), freelance developer for [hire](https://typist.tech/contact/).

Full list of contributors can be found [here](https://github.com/TypistTech/vagrant-sudo-rsync/graphs/contributors).

## Contributing

Please see [CODE_OF_CONDUCT](./CODE_OF_CONDUCT.md) for details.

## License

[Vagrant Sudo Rsync](https://github.com/TypistTech/vagrant-sudo-rsync) is released under the [MIT License](https://opensource.org/licenses/MIT).
