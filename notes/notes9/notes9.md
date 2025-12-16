# Notes 9

## File Manipulation Continued

### grep
#### Definition
**G**lobally match a **r**egular **e**xpression, and **p**rints the output. 

#### Usage/Formula
Use to search a file or command output for a string. 


#### Examples


```
grep "admin" access.log
```
> Finds every instance of the regular expression "admin" in the access log file.


```
grep 
```
>


```
```
>

### awk
#### Definition
Programming language meant for complex text processing.

#### Usage/Formula
Used for pattern matching and data manipulation, as opposed to cut which is limited to simple text manipulation.

Uses whitespace by default for separation between columns, can specify field delimiters using the `-F` option.

#### Examples


```
awk -F '{print $5}'  
```
>


```
```
>


```
```
>

### sed
#### Definition
Stream editor, used to do basic text transforms on an input stream such as a file or from a piped input. 

#### Usage/Formula
Adding characters, changing a certain specified string.

#### Examples

```
```
>


```
```
>


```
```
>

### Pipes
#### Usage

Transfer string from one command to the next. Allows for multiple commands to run after each other in sequence, making single commands stronger together. 

#### Examples

```
man grep | grep "ignore"
```
> pipes output of `man grep` to `grep` searching for all instances of ignore

```
ls -l | head -5
```
> shows files in a long format, then shows only the first five lines of `ls`

```

```
>

### Saving output of command 

#### Usage
Saves the output of a command to a file, using the `>` character. 



#### Examples

```
```
>

```
```
>

```
```
>

### Appending output of command 
#### Usage

Appends command to the end of a file using `>>`.

#### Examples

```
```
>


```
```
>

```
```
>
