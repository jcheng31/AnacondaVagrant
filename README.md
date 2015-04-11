# VagrantAnaconda
Vagrant provisioning for [Anaconda](https://github.com/DamnWidget/anaconda) support right out of the box, and a pre-configured Sublime Text project. Just clone, `vagrant up`, and go. Based on Ubuntu 14.04.

There's nothing too special here - just a provisioning script that'll install the [server](https://damnwidget.github.io/anaconda/vagrant/) Anaconda needs, and a Sublime Text project set up to use it.

## What do I need to do?
Clone the repo, optionally tweak the configuration files (see below), then `vagrant up` and you're set. Open `project.sublime-project` with Sublime, and code away.

Each time you boot the VM*, `vagrant ssh`, `cd /opt/anaconda/`, then run `python server.py` (or `python3 server.py` if you feel like it)

*Unfortunately, I couldn't figure out a way to start the server on boot or login - running `python /opt/anaconda/server.py` doesn't work. Feel free to submit a pull request to fix this; my UNIX-fu isn't very strong.

## Configuration?
If you can't use the default ports (19360 on the guest, 1936 on the host), update them in `Vagrantfile`, `project.sublime-project`, and `provisioning\anaconda_config.py` before provisioning the VM.

You may also want to change the project name in `provisioning\anaconda_config.py`, or the interpreter (which is set to `python3` by default).

If you'd like pip installed too, uncomment the appropriate lines in `provisioning\base.sh`.