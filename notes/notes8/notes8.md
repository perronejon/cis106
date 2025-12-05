# Notes 8
## File manipulation

### cat

#### Definition

Concatinate files and print the output as standard text. 

#### Usage



#### Examples

### tac

#### Definition

Concatinates file and prints the output starting with the end line going backwards to the front of the file.

#### Usage

`tac`, followed by a `FILE`.  

#### Examples
```
tac 
```

### head

#### Definition

#### Usage

```
head update-2025-7-15.log
```

> Will print the first ten lines of the file `update-2025-7-15.log`


#### Examples

### tail

#### Definition

#### Usage

#### Examples

### cut

#### Definition

#### Usage

#### Examples

### sort

#### Definition

Writes out a **concatinated**, sorted output, given arguments and a file. 

#### Usage

`sort`, a flag, then the name of the file.

#### Examples

```
sort employees.csv
```
> Prints each line of `employees.csv` in alphabetical order.

```
sort -n logins.log
```
> Sorts and prints the contents of `logins.log` in numeric order.

### wc

#### Definition

Print newline, word, and byte counts for a file or multiple. A word is any non-empty sequence of non-white spaces, bounded by white space characters at the beginning and end of the input.

#### Usage


#### Examples

```
wc -l ~/projects/scraper/scraper.py
```
> Prints a count of lines in `scraper.py`

