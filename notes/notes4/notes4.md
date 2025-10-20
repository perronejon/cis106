# How to install and remove software using APT and DNF
### What is the difference between APT and DNF?
## Installing software

### How do you find software?
For both `dnf` and `apt`, you can use the `search` feature in order to find 

### How do you install software?
Using the package name, use `sudo dnf` or `sudo apt` and `install`

## Shell Scripting

### Setup
To create a shell or bash script, first create a file with the `.sh` extension.

Then, with a text editor, open the empty `.sh` file and type `#!/bin/bash`, the shebang (or hashbang), in order to let the kernel know this will be ran through bash at `/bin/bash`.

### Content
Once the initial foundation for the script is set, there are a number of considerations to be made in running the script.

1. **Commands** 

You may add commands to the file as if using the terminal emulator or 

```
echo "Starting..."
mkdir -p /tmp/tempfile
cd /tmp/tempfile
```

2. **Variables**

You may choose to use variables if you need to call the same variable multiple times in the script. This ensures script flexibility. Define the variable, `VAR = "systemname"` then call it with the `$VAR` format. 

```
VAR = "hostname"

echo "The hostname is $VAR."
```

3. **Control flow**

Conditional statements

```
if [ -f "/etc/config.conf]; then
    echo "Config exists!"
else
    echo "We're screwed..."
fi
```

4. **Loops**

To do multiple actions repeatedly, use `for` loops. 

```
for zip_file in *.zip; do
    [-e ]
    echo "Extracting $zip_file"
```

5. **Functions**

