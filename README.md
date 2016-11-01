#iTerm2-Finder-Droplet

Finder toolbar :droplet:droplet:droplet: app to quickly open directories in iTerm2 with a few exta features. Written in Applescript.

### Features
* Opens iTerm2 and `cd`s into the current directory 
* **Drag & Drop** support for folders!
* Keyboard shortcuts for total control
* `Click` to open the current directory in the **active tab**
* `⇧`-`Click` to open in a **new window**
* `Drag`-`Drop` a directory to open it in the **active tab**
* `⌘`-`Drop` to open in a **new tab**
* `⌥`-`Drop` to open in a **new window**


###Installation
Download the compiled application from the [releases page](https://github.com/psobko/iterm2-finder-droplet/releases/) or clone the repo and build the application from source. You can keep the application wherever you want.

Drag the application onto the Finder toolbar while holding `⌘`, drop it once a green plus sign (`+`) appears

To uninstall hold down `⌘` and drag the icon out of the toolbar


###Building
Download the repo from here or clone it:

```
$ git clone https://github.com/psobko/iterm2-finder-droplet.git
```
The easiest way to build the application is to run the build script. This will compile the script using `osacompile` with the appropriate options and set the custom icon.

```
$ ./build.sh
```

Otherwise you can double-click the .applescript file to open it in the Script Editor app and then select `File` > `Export...` from the menu bar. Make sure the file format is set to Application and none of the options are selected.

###Todo
* Add ability to drag files
* Get rid of "cd" text
* Add option to clear the console window
* Fix the icon size
* Set custom name during build
* Set version #
