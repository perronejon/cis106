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
> `-l` prints the full metadata, while `A` includes all files except the implied `.` and `..` 

## pwd
- print the working directory
- useful to find the absolute path
  - used in tandem with `cd` to both orient and navigate
## cd
- changes the working directory

## What is a variable?

A variable is a named container that holds data. They allow for reuse and dynamic scripting without hardcoding values.

## How do I use a variable?

Variables are used to retrieve commonly used information. 

### What is an environment variable?

Environment variables are exported to the environment or the process's memory space. These variables are inherited by any child processes spawned by the process. The command `env` prints a view of all exported variables. 

### What is a user defined variable?

User defined variables are local to the current shell session. They are used temporarily, for loops, or for script-local configuration. 

### What is the root directory?

The root directory is the common origin of the Linux / UNIX filetree.

### What does “Parent Directory” mean?

A parent directory is 

### What does “Current working directory” mean?

### What is an absolute path? Include an example

### What is a relative path? Include an example

### What is the difference between “Your home directory” and “The home directory”?