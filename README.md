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
mkfile -n 50M HDDs/HDD.dsk
```

Third, the run.sh script can be invoked, but it must be launched relatively from the $HOME folder since that is where
the Basilisk II references everything from:

```bash
cd ~
~/path/to/Emulation/run.sh
```

Upon first boot, System 7 will ask you to initialize the "new" HDD. Name it what you will and initialize it, remembering
the name of the disk as it will be needed next.

When the system is booted, double-click on the System7.5.3_Install disk, then double-click on the .dsi file in that
folder. This will create a new Desktop icon, which is a self-extracted container for the entire installer for the 7.5.3
System. Double-click the new icon, then double-click the Install icon and follow the prompts, making sure to select the
HDD install location.

Once the install is complete, shutdown the emulated system and modify the run.sh script, removing the System7_boot.dsk
and System7.5.3_Install.dsk lines. Invoking the run.sh script once more will startup the emulated system "booted" from
the OS as installed on the HDD!
