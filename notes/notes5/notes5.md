# Notes 5
##

## ls
- list files inside of a directory. 
- Its formula is `ls [OPTION] ... [FILE]...`
- Using an `[OPTION]` such as:
  - `-a` to list all entries including those starting with `.`
  - `-l` to list all details about each file

```
ls -lA
❯ ls -lA
total 3832
-rw-------. 1 student student     700 Oct 20 20:40 .bash_history
-rw-r--r--. 1 student student      18 Nov  7  2024 .bash_logout
-rw-r--r--. 1 student student     144 Nov  7  2024 .bash_profile
```
> `-l` prints the details of each file, while `A` includes all files, even those starting with `.`, except the implied `.` and `..` 

## pwd
- print the working directory
- useful to find the absolute path
  - used in tandem with `cd` to both orient and navigate

```
pwd
/home/student
```

## cd
- changes the working directory
- can use either absolute or relative path

```
cd /home/student/Music
cd ~/Music

cd Music # Relative path from /home/student

```
## What is a variable?

A variable is a named container that holds data. They allow for reuse and dynamic scripting without hardcoding values.

## How do I use a variable?

Variables are used to retrieve commonly used information. In order to define a user variable in a script 

### What is an environment variable?

Environment variables are exported to the environment or the process's memory space. These variables are inherited by any child processes spawned by the process. The command `env` prints a view of all exported variables. 

### What is a user defined variable?

User defined variables are local to the current shell session. They are used temporarily, for loops, or for script-local configuration. 

### What is the root directory?

The root directory is the common origin of the Linux / UNIX filetree. All files on the Linux filesystem descend from the root directory. The root directory is denoted by a single forward slash, `/`. 

It contains system directories such as `/home`, `/bin`, `/usr`, and `/bin`.

### What does “Parent Directory” mean?

A parent directory is the directory one level up from the current location. Every file has a parent except for the root directory.

### What does “Current working directory” mean?

The current working directory is the active location in the filesystem. You can find the current working directory by using `pwd`.

```
pwd
/home/student/Documents

```

### What is an absolute path? Include an example

An absolute path is a path that includes the directory's parents, their parents, all the way to root. 

```
/home/student/Documents/file.txt

```

### What is a relative path? Include an example

A relative path uses the current working directory as the starting path when using commands without referencing the absolute path.

```
pwd
# /home/student/Documents
cat file.txt # resolves to /home/student/Documents/file.txt
```

### What is the difference between “Your home directory” and “The home directory”?

The home directory is the directory that holds all user subdirectories. Your home directory is your specific user's home directory. Your home directory is the default starting point for each shell session. 

| Concept               | Path            | What it is                      |
| --------------------- | --------------- | ------------------------------- |
| The home Directory    | `/home`         | Container for all users         |
| Your home directory   | `/home/student` | `student`'s personal folder     |
| Bob's home directory  | `/home/bob`     | `bob`'s personal folder         |
| Root's home directory | `/root`         | `root` user's space (exception) |




