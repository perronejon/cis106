# Notes 6 - File Organization 
## mkdir

### Definition
Makes directory if it does not already exist. 

### Usage / Formula
`mkdir` then an option, such as `-p` for making parent directories as needed, and then the `DIRECTORY` path. Uses relative path if absolute path is not specified.

### Examples
```
mkdir projects # Creates project directory in current working directory
mkdir -p Pictures/vacation/hawaii-25 # Creates vacation if not made
mkdir -pv .local/share/Steam/steamapps/common/customgame
```

## touch
### Definition
Updates file timestamp to now. If file does not exist, it creates that file with current timestamp. 

### Usage / Formula
`touch`, then an argument such as `-c` to specify not to create a file or `-m` to only change the modification time, then the `FILE`'s path. 
### Examples
```
touch file1.txt file2.txt file3.txt # updates timestamp, creates and sets timestamp if files are not made

touch -c file1.txt file2.txt file44.txt 

# only updates made files and will not create more files
# since file44.txt was not present, will not create file44.txt
```

## rm
### Definition

Remove files or directories, this action is irreversable (no recycle bin or trash bin as used in GUI file managers). 

### Usage / Formula
`rm` then an option such as `-r` for recursively removing directories, then `[FILE]` 

The use of `-f` is unprompted, making it dangerous as opposed to using `-r` by itself.

### Examples
```
rm ~/Documents/oldfile.txt # removes oldfile.txt
rm ~/Documents/english # will not remove, will show error:
rm: cannot remove 'english': Is a directory


```

## rmdir 
### Definition
remove empty directory
### Usage / Formula

### Examples

## cp
### Definition
Copy 
### Usage / Formula

### Examples

## mv
### Definition
Move
### Usage / Formula

### Examples
