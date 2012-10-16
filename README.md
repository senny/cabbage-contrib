cabbage-contrib
===============

cabbage-contrib is a repository of common cabbage bundles, which are
not shipped in the [core cabbage distribution](https://github.com/senny/cabbage).

```shell

                                      $$\       $$\
                                      $$ |      $$ |
                   $$$$$$$\  $$$$$$\  $$$$$$$\  $$$$$$$\   $$$$$$\   $$$$$$\   $$$$$$\
                  $$  _____| \____$$\ $$  __$$\ $$  __$$\  \____$$\ $$  __$$\ $$  __$$\
                  $$ /       $$$$$$$ |$$ |  $$ |$$ |  $$ | $$$$$$$ |$$ /  $$ |$$$$$$$$ |
                  $$ |      $$  __$$ |$$ |  $$ |$$ |  $$ |$$  __$$ |$$ |  $$ |$$   ____|
                  \$$$$$$$\ \$$$$$$$ |$$$$$$$  |$$$$$$$  |\$$$$$$$ |\$$$$$$$ |\$$$$$$$\
                   \_______| \_______|\_______/ \_______/  \_______| \____$$ | \_______|
                             _ _                                    $$\   $$ |
                  _         (_) |                                   \$$$$$$  |
  ____ ___  ____ | |_   ____ _| | _                                  \______/
 / ___) _ \|  _ \|  _) / ___) | || \
( (__| |_| | | | | |__| |   | | |_) )
 \____)___/|_| |_|\___)_|   |_|____/

```


Bundles
-------

These bundles are included in `cabbage-contrib`:

- **irc**: Connect to a irc chat server
  using [erc](http://www.emacswiki.org/emacs/ERC).
  See [bundle readme](https://github.com/senny/cabbage-contrib/blob/master/bundles/irc/readme.md).

- **contrib-developer**: Open a file in contrib repository
  using `C-c C-p`.


If you are interested in helping out, please have a look at our [Contribution Guidelines](https://github.com/senny/cabbage-contrib/blob/master/CONTRIBUTING.md).



Install
-------

- Clone the `cabbage-contrib` repository update the submodules.

    $ git clone git clone https://github.com/senny/cabbage-contrib.git
    $ cd cabbage-contrib
    $ git submodule init
    $ git submodule update

- Register `cabbage-contrib` in your `~/.emacs.d/local.el` (be sure to
  insert the paths to your checkout).

    (add-to-list 'cabbage-bundle-dirs (expand-file-name "~/path/to/cabbage-contrib/bundles/"))
    (add-to-list 'cabbage-vendor-dirs (expand-file-name "~/path/to/cabbage-contrib/vendor/"))

- Enable the desired bundles by putting them in the `cabbage-bundles`
  list in your `~/.emacs.d/config.el`.



Update
------

When updating `cabbage-contrib` you should also update the submodules:

- cd into your `cabbage-contrib` checkout

- ``$ git pull``

- ``$ git submodule init``

- ``$ git submodule update``
