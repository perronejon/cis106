# Lecture 3 Notes

## Desktop and Command Line Questions

### What is a graphical user interface (GUI)?

GUI is a form of user interface that allows users to interact with computing devices using visual elements such as icons, buttons, and menus as opposed to text-based interfaces. It is an interactive layer between the user and the machine. The GUI translates user actions such as clicks and drags into system-level commands, making computing accessible without the user having to memorize command syntax.  

### What is a desktop environment?

Originally conceptualized as a virtual equivalent for the physical office desk, it includes a window manager, panels, file managers, and system settings all bundled in one. In Linux, there are numerous desktop environment options, such as GNOME, KDE Plasma, and Xfce.

### What is the command line interface (CLI)?

The command line interface is the text based interface where the user inputs commands which the system executes. It is a direct form of communication with the OS via the shell.

### How do I access the command line interface (CLI)?

There are two ways to access the command line interface, through a virtual console (direct kernel level TTY) or through a terminal emulator (GUI applications that simulate terminal behavior). 

### What is a virtual console?

A text-based login session that runs independently of the graphical environment, able to be brought up at any time through use of `Ctrl+Alt+F1` through `Ctrl+Alt+F6`. Each TTY is a separate session with its own login instance. To exit the virtual console to return to the GUI, use `Ctrl+Alt+F7`.

### What is a terminal emulator?

A virtual approximation of a hardware terminal (older physical screens and keyboards connected to mainframes) in the GUI, allowing interaction with the shell, displaying output after the input commands are executed.

### What is bash?

Bash, which stands for Bourne Again SHell, is a command line interpreter and default shell for most Linux distributions. The terminal emulator displays the window, while the bash shell is the program running inside of the GUI. It serves as a command processor and a scripting language for automating commands. 

### What is the shell prompt?

The configurable text string that displays system information and waits for user input, usually showing the username, hostname, and current directory. A default format would be `user@hostname:~/path$`. 

## Definition, usage, and examples of the following commands  

`clear` - used to clear the terminal screen and scrollback buffer, previously displayed output that moved out of the visible area, if there is any. It is useful for keeping the terminal history organized.


```
> clear
# clears the screen, terminal moves to top
```

`echo` - command used to output text. Commonly used in scripts for debugging, user feedback, or piping data to other commands. Interprets backslash escapes with the `-e` flag.

```
> echo -e "Uptime:\t$(uptime -p)"
Uptime:	up 3 hours, 42 minutes
```

`date` - prints or sets the time and date, according to the user's format. Used for logging, backup scripting, and timestamping. 

```
> date --iso-8601=seconds
2025-10-07T21:40:19-04:00
```

`free` - used to display the amount of free and used memory in the system. The `-h` flag allows for human readability, and `-s` to display continuously
```
> free -h
               total        used        free      shared  buff/cache   available
Mem:             XGi         XGi         XGi         XMi         XGi         XGi
Swap:            XGi         XKi         XGi
```

`uname` - prints system information, such as the kernel name, machine hardware name, processor, and operating system. 

```
> uname -srv
Linux 6.16.9-200.fc42.x86_64 #1 SMP PREEMPT_DYNAMIC Thu Sep 25 18:05:50 UTC 2025
```

`history` - lists a history of commands used. Allows user to retrace steps and search through commands  
```
> history | grep "update"
114 sudo dnf update
134 sudo dnf update
177 sudo dnf update
203 sudo dnf update && sudo flatpak update
```
`man` - the system's manual pager. The page argument given to `man` is normally the name of a program, utility, or function. Comes pre-packaged with distribution, allowing user to confirm details of system. 

```
man man
# Opens a fullscreen page
MAN(1)                                          Manual pager utils                                          MAN(1)

NAME
       man - an interface to the system reference manuals
...
```

`tldr` - condensed version of manual pages, 3rd party tool. Usage is for quick reference as opposed to in-depth `man` 

`cheat` - user's personal cheat sheet on specified command, personal documentation. 

`hostname` - Displays the label set for device, used in identification of devices in electronic communication such as the internet.  

`df` - Lists the amount of free space available within the file system. 
```
> df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/nvme0n1p3  234G  189G   33G  86% /
/dev/nvme0n1p1  511M  312M  200M  61% /boot/efi
tmpfs           7.7G  2.1M  7.7G   1% /run
```

`du` - Lists the space taken up by files and directories, calculating the actual sizes of files. It allows the user to target specific large directories. 

```
> du -sh ~/Documents/*
2.4G    ~/Documents/Projects
156M    ~/Documents/ISOs
12K     ~/Documents/todo.txt
```

`figlet` - turns ordinary text into larger ASCII text. Decorative in nature, used in scripts and logs to beautify 
```
> figlet "PRODUCTION"
 ____  ____   ___  ____  _   _  ____ _____ ___ ___  _   _ 
|  _ \|  _ \ / _ \|  _ \| | | |/ ___|_   _|_ _/ _ \| \ | |
| |_) | |_) | | | | | | | | | | |     | |  | | | | |  \| |
|  __/|  _ <| |_| | |_| | |_| | |___  | |  | | |_| | |\  |
|_|   |_| \_\\___/|____/ \___/ \____| |_| |___\___/|_| \_|

❯ figlet -f small "deploy friday"
    _          _             __     _    _
 __| |___ _ __| |___ _  _   / _|_ _(_)__| |__ _ _  _
/ _` / -_) '_ \ / _ \ || | |  _| '_| / _` / _` | || |
\__,_\___| .__/_\___/\_, | |_| |_| |_\__,_\__,_|\_, |
         |_|         |__/                       |__/
```