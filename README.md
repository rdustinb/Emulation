# Emulation
All things emulation, though it mostly pertains to running Basilisk II or Mini vMac.

## Getting Started
First, you need the actual Basilisk II binary. Prebuilt binaries for platforms like macOS can be found in this Wiki
article:

https://www.emaculation.com/forum/viewtopic.php?f=6&t=7361

Second, a blank "HDD Image" needs to be created in the HDDs directory. For macOS this can be accomplished with a command
such as:

```bash
mkdir HDDs
mkfile -n 50M HDDs/System7.dsk
```

Finally, the run.sh script can be invoked, but it must be launched relatively from the $HOME folder since that is where
the Basilisk II references everything from:

```bash
cd ~
~/path/to/Emulation/run.sh
```
