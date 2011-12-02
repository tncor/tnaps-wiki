h2. Installing on Debian/Ubuntu

The following steps should get you up and running with TNAPS on Debian and derived distros.

h3. Installing Mono

TNAPS uses Mono Framework to run. Current version of TNAPS 3 beta 1 supports Mono 2.10.1. More recent versions of Mono are not supported yet due to some bugs in Mono's WCF implementation. We are looking forward to fix those issues soon. Meanwhile, you should stick with 2.10.1. 

Get Mono 2.10.1 installation package for Mac OS X from the Mono Project [[download page|http://download.mono-project.com/archive/2.10.1/download/]].

You have to build Mono 2.10.1 manually, as standart distributions provide automatic install only for 2.6.* series. Mono allows multiple versions to be installed at the same time. This is very convinient as some Debian programs depend on Mono 2.6.* and it is better not to remove it. To start buiding Mono from scratch clone git repo:

```bash
$cd ~/tmp
$ git clone git://github.com/mono/mono.git
```

Checkout 2.10.1 and build it into /opt/mono-2.10.1 directory. It is a recommended directory naming schema for Mono building.

```bash
$ cd mono
$ git checkout 2.10.1
$ ./autogen.sh --prefix=/opt/mono-2.10.1
$ make
$ sudo make install
```

After success build you will have @/opt/mono-2.10.1/bin/mono@  binary to run TNAPS with.

Note: Consult with Mono README for detailed installation instructions [[https://github.com/mono/mono/tree/]]]

Check whether you have correct version of @mono@ is installed:

```bash
$ /opt/mono-2.10.1/bin/mono --version
```

If it says 2.10.1 your are ready to launch TNAPS. 

h3. Installing Distribution Binaries

Download latest TNAPS distribution from [[download page|http://tncor.com/en/tnaps/download]]. 

TNAPS comes in a form of zip package that have to be extracted. You can extract it in any place of your system, but we recommend typical place of @/usr/local/tnaps@. Please note, zip package with TNAPS already contains folder named @tnaps@ so you need simply to extract package contents into @/usr/local@.

Once unzipped you are ready to launch TNAPS. Assuming you have @/usr/local/tnaps@ as your base directory do the following:

```bash
$ sudo /opt/mono-2.10.1/bin/mono /usr/local/tnaps/tnaps.exe
```

Of course, you can create a shortcut script in @/usr/sbin/tnaps@ with following content:

```bash
#!/bin/bash
sudo /opt/mono-2.10.1/bin/mono /usr/local/tnaps/tnaps.exe
```

After that you can launch TNAPS simply typing @tnaps@ in the command-line.
 
Note: As TNAPS launches it opens port @9095@ for incoming connection in order to serve Management Center files. 

Now you should be able to access TNAPS Management Center in browser through the URL:

```
http://localhost:9095/tnaps/console
```

Note: The first launch of Management Center from Browser would take some amount of time. Please, be patient and for the Management Center to load. It is normal, as TNAPS initializes initial resources after launch. 

h3. Eliminating Need for @sudo@

As you may have noticed we used @sudo@ to launch TNAPS. Actually, @sudo@ is required only to create @/usr/share/tn@ directory for TNAPS Library and other generated files. If you want to be more secure and note use @sudo@ just add write permissions for yourself or group to @/usr/share/tn@ and launch @tnaps@ from your shell:

```bash
$ sudo mkdir /usr/share/tn
$ sudo chmod -R a+w /usr/share/tn
$ mono /usr/local/tnaps/tnaps.exe
```

h3. Shared Files

TNAPS places all of its files (Library, Instances configuration, Logs, etc.) in the following folder:

```
/usr/share/tn/server
```

h3. Uninstall

To remove TNAPS simply delete folder with installed TNAPS (@/usr/local/tnaps@). You might want to preserve TNAPS shared files intact so that they can be used next time you decide to install TNAPS. In case you prefer to get rid of everything remove @/usr/share/tn@ as well:

```bash
$ sudo rm -r -f /usr/local/tnaps
$ sudo rm -r -f /usr/share/tn
```