SSTV Decoder
============

![](https://raw.githubusercontent.com/colaclanth/sstv/master/examples/m1.png)

A command line slow-scan television decoder that works on audio files rather than reading a soundcard (like most other decoders).
Currently supports the following modes:
* Martin 1, 2
* Scottie 1, 2, DX
* Robot 36, 72

Installation
------------
An experienced user may would want to create venv, install project and run it.

Other users may use `install.sh` script to install the script and `uninstall.sh` to remove it. I do advice you to remove venvs (run uninstall script) as venvs venvs may take a lot of disk space on your device.
```
$ git clone https://github.com/rasputyashka/sstv.git
$ cd sstv
$ ./install.sh
```

Usage
-----
**The installation script tells you what to do, but anyways...**

Usage actually depends on your environment: in case you don't have uv installed, you may run `.venv/bin/sstv` like this:
```
$ .venv/bin/sstv -d audio_file.wav -o result.png
```
Or you can actvate virtual environment and run program only by name
```
$ . .venv/bin/activate
$ sstv -d audio_file.wav -o result.png
```
In case you DO have uv, you may just run
```
$ uv run sstv -d audio_file.wav -o result.png
```
If your autocompletions stopped working with `uv run`, you can activate venv and run the script directly with the completions :)

Resources Used
--------------

* SSTV specification/timings - [The Dayton Paper](http://webcache.googleusercontent.com/search?q=cache:GzP65FlYEtwJ:www.barberdsp.com/downloads/Dayton%2520Paper.pdf)

IMPORTANT NOTE
--------------
I have no idea how the project works, my goal was to add support for newer python versions. That said, please, do not add any issues regarding the bugs in the project.
