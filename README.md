Name
====

weighttp - a lightweight and simple webserver benchmarking tool

Table of Contents
=================

* [Name](#name)
* [Description](#description)
* [Build](#build)
* [Installation](#installation)
* [Usage](#usage)
* [Dependencies](#dependencies)

Description
===========

This is a fork of weighttp with various bug fixes and opitmizations

Build
=====

```shell
make
```

Installation
============

```shell
make install   # install into /usr/local/bin by default
```

More tuning:

```shell
make install PREFIX=/opt/weighttp
```

And for packagers:

```shell
make install PREFIX=/opt/weighttp DESTDIR=$DESTDIR
```

[Back to TOC](#table-of-contents)

Usage
=====

$ weighttp -h

[Back to TOC](#table-of-contents)

Dependencies
============

* libev can be found in your distro's repository or at http://software.schmorp.de/pkg/libev.html
[Back to TOC](#table-of-contents)

