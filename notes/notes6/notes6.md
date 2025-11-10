# Notes 6 - File Organization 
## mkdir

### Definition
Makes empty directory if it does not already exist. 

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
Updates file timestamp to now. If file does not exist, it creates an empty file with current timestamp. 

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
```
Directories requiring `-r` flag:
```
rm ~/Documents/english # will not remove, will show error:
rm: cannot remove 'english': Is a directory
```

## rmdir 
### Definition
Remove an empty directory. 

### Usage / Formula
`rmdir` then an `[OPTION]`, followed by a `DIRECTORY` 
### Examples
Removing directories
```
❯ ls -lA
total 0
drwxr-xr-x. 1 admin2 admin2 0 Nov  9 20:55 grades
drwxr-xr-x. 1 admin2 admin2 0 Nov  9 20:55 handouts
drwxr-xr-x. 1 admin2 admin2 0 Nov  9 20:55 unfinished
rmdir grades
❯ ls -lA
total 0
drwxr-xr-x. 1 admin2 admin2 0 Nov  9 20:55 handouts
drwxr-xr-x. 1 admin2 admin2 0 Nov  9 20:55 unfinished
```
Removing multiple directories
```
ls 
documents  info  leftovers  utils
rmdir info documents utils # remove multiple
ls
leftovers # only leftovers remain
```
## cp
### Definition
Copy a source file or directory to 
### Usage / Formula

### Examples
```
cp document.txt ~/Documents 
```
```
cp -r videos/ /mnt/nas/personal/
# copies files and directories in videos recursively

cp -rv Documents/ /mnt/nas/personal
# shows output of cp -r
'Documents/grades' -> '/mnt/nas/documents/grades'
'Documents/grades/grades1.txt' -> '/mnt/nas/documents/grades/grades1.txt'
'Documents/grades/grades2.txt' -> '/mnt/nas/documents/grades/grades2.txt'

```

## mv
### Definition
Rename or move a source to a destination. Move and changing the absolute path are functionally the same action.
### Usage / Formula
`mv`, then an `[OPTION]`, followed by a `SOURCE` and a `DESTINATION`. 
### Examples
Prompt before overwrite:
```
mv -i grades2.txt grades1.txt
mv: overwrite 'grades1.txt'? n
ls
grades1.txt grades2.txt
```
Backup before moving:

```
touch txt2.txt
mv -b txt1.txt txt2.txt
ls
txt2.txt  txt2.txt~
```

