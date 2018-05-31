---
title: "Advanced Shell"
author: "Radhika Khetani, Meeta Mistry"
date: "May 9, 2018"
---

## Learning Objectives

* Increasing productivity when working on the command-line and in a cluster environment
* Becoming familiar with advanced bash commands and utilities 

## Advanced Bash Commands and Utilities

As you begin working more with the Shell, you will discover that there are mountains of different utilities at your fingertips to help increase command-line productivity. So far we have introduced you to some of the basics to help get you started. In this lesson, we will touch on some more advanced topics that can be very useful as you carry out analyses in a cluster environment. 

## O2-specific utilities

* [Configuring your shell](#config)
    * [`.bashrc` versus `.bash_profile`](#bashrc)
    * [Aliases](#alias) 
* [Symbolic links](#symlinks)
* [Transferring files with `rsync`](#rsync)
    * [Working on `/n/scratch2/`](#nscratch)

***

## Configuring your shell <a name="config"></a>

In your home directory there are two hidden files `.bashrc` and `.bash_profile`. These files contain all the startup configuration and preferences for your command line interface and are loaded before your Terminal loads the shell environment. Modifying these files allow you to change your preferences for features like your command prompt, the colors of text, and adding aliases for commands you use all the time. 

> **NOTE:** These files begin with a dot (`.`) which makes it a hidden file. To view all hidden files in your home directory you can use:
> 
> `$ ls -al ~/`

### `.bashrc` versus `.bash_profile` <a name="bashrc"></a>

You can put configurations in either file, and you can create either if it doesn’t exist. **But why two different files? What is the difference?**

The difference is that **`.bash_profile` is executed for login shells, while `.bashrc` is executed for interactive non-login shells**. It is helpful to have these separate files when there are preferences you only want to see on the login and not every time you open a new terminal window. For example, suppose you would like to print some lengthy diagnostic information about your machine (load average, memory usage, current users, etc) - the `.bash_profile` would be a good place since you would only want in displayed once when starting out.   

Most of the time you don’t want to maintain two separate configuration files for login and non-login shells. For example, when you export a `$PATH` (as we had done previously), you want it to apply to both. You can do this by sourcing `.bashrc` from within your `.bash_profile` file. Take a look at your `.bash_profile` file, it has already been done for you:

```bash
$ less ~/.bash_profile
```

You should see the following lines:

```bash
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
```

What this means is that if a `.bashrc` files exist, all configuration settings will be sourced upon logging in. Any settings you would like applied to all shell windows (login and interactive) can simply be added directly to the `.bashrc` file rather than in two separate files.


### Aliases <a name="alias"></a>

An alias is a short name that the shell translates into another (usually longer) name or command. They are typically placed in the `.bash_profile` or `.bashrc` startup files so that they are available to all subshells. You can use the `alias` built-in command without any arguments, and the **shell will display a list of all defined aliases**:

```bash
$ alias
```

This should return to you the list of aliases that have been set for you, and you can see **the syntax used for setting an alias is**:

```bash
alias aliasname=value
```

When setting an alias **no spaces are permitted around the equal sign**. If value contains spaces or tabs, you must enclose the value within quotation marks. If you look through the list of aliases that have been set for you, `ll` is a good example of this:

```bash
alias ll='ls -l'
```

Since we have a modifier `-l` and there is a space required, the quotations are necessary.

Let's **setup our own alias**! Every time we want to start an interactive session we have type out this lengthy command. Wouldn't it be great if we could type in a short name instead? Open up the `.bashrc` file using `vim`:

```bash
$ vim ~/.bashrc
```

Scroll down to the heading "`# User specific aliases and functions`" and on the next line you can set your alias:

```bash
o2i='srun --pty -p short -t 0-12:00 --mem 8G /bin/bash'
```

Save and quit. Now we can source the `.bash_profile` file and test it out. By typing `o2i` at the command prompt we will request an interactive session for 12 hours with 8G of memory. You can change the directives to those you use more often (i.e add more cores, increase memory).


```bash
$ source ~/.bash_profile

$ o2i
```

## Symbolic links <a name="symlinks"></a>

The O2 cluster supports symbolic links also known as symlinks. This is a kind of “file” that is **essentially a pointer to another file name**. Symbolic links can be made to directories or across file systems with no restrictions. You can also make a symbolic link to a name which is not the name of any file. (Opening this link will fail until a file by that name is created.) Likewise, if the symbolic link points to an existing file which is later deleted, the symbolic link continues to point to the same file name even though the name no longer names any file.

Symlinks can be used in lieu of copying over large files. For example, when we began the RNA-seq part of this workshop we had copied over FASTQ files from `~/unix_lesson/raw_fastq` to `~/unix_lesson/rnaseq/raw_data`. But what we could have done instead is created symlinks to those files.

The basic syntax for creating a symlink is:

```bash
ln -s /path/to/file /path/to/symlink
```

So if we wanted to have symlinks to our FASTQ files instead of having duplicate copies, we can first remove the files that are currrently there:

```bash
$ rm ~/unix_lesson/rnaseq/raw_data/*
```

And then we can symlink the files:

```bash
$ ln -s ~/unix_lesson/raw_fastq/*.fq ~/unix_lesson/rnaseq/raw_data/
```

Now, if you check the directory where we created the symlinks you should see the filenames listed in cyan text followed by an arrow pointing the actual file location. (_NOTE: If your files are flashing red text, this is an indication your links are broken so you might want to double check the paths._)

```bash
$ ll ~/unix_lesson/rnaseq/raw_data
```

## Transferring files with `rsync` <a name="rsync"></a>

During this workshop we have mostly used Filezilla to transfer files to and from your laptop to the O2 cluster. At the end of the Alignment/Counting lesson we also introduced how to do this on the command line using `scp`. The way `scp` works is it reads the source file and writes it to the destination. It performs a plain linear copy, locally, or over a network.

When **transferring large files or a large number of files `rsync` is a better command** to use. `rsync` employs a special delta transfer algorithm and a few optimizations to make the operation a lot faster. **It will check files sizes and modification timestamps** of both file(s) to be copied and the destination, and skip any further processing if they match. If the destination file(s) already exists, the delta transfer algorithm will **make sure only differences between the two are sent over.**

There are many modifiers for the `rsync` command, but in the examples below we only introduce a select few that we commonly use during a file transfer.

**Example 1:**

```
rsync -t --progress /path/to/transfer/files/*.c /path/to/destination
```

This command would transfer all files matching the pattern *.c from the transfer directory to the destination directory. If any of the files already exist at the destination then the rsync remote-update protocol is used to update the file by sending only the differences.

**Example 2:**

```
rsync -avr --progress /path/to/transfer/directory /path/to/destination
```

This command would recursively transfer all files from the transfer directory into the destination directory. The files are transferred in "archive" mode (`-a`), which ensures that symbolic links, devices, attributes, permissions, ownerships, etc. are preserved in the transfer. In both commands, we have additional modifiers for verbosity so we have an idea of how the transfer is progressing (`-v`, `--progress`)

> **NOTE:** A trailing slash on the transfer directory changes the behavior to avoid creating an additional directory level at the destination.  You can think of a trailing `/ ` as meaning "copy the contents of this directory" as opposed to "copy the  directory  by  name".

### Working on `/n/scratch2` <a name="nscratch"></a>

Typically, the `rsync` command is used to move files between a remote computer and a local computer. But it can also be used to  to move files on the same computer. For example, we could use it to move files across filesystems on O2.

Most HPC environments have a "scratch space" available to use. This is **a temporary filesystem with larger amounts of storage space and resources, which is ideal for running analyses**.  On the O2 cluster, this is located at `/n/scratch2`. Each user is entitled to 10 TB of space in the `/n/scratch2` filesystem. You can create your own directories inside `/n/scratch2/` and put data in there. These files are not backed up and will be deleted if they are not accessed for 30 days.

Scratch will not work very well with workflows that write many thousands of small files. It is designed for workflows with medium and large files (> 100 MB), making it ideal for many next-gen sequencing analysis, image analysis, and other bioinformatics workflows that use large files.

When performing your analysis, you may want to take advantage of this space and will want to start by copying over your raw FASTQ files. Rather than using `cp`, the `rsync` command would be benefical since FASTQ files are large in size. As an example we will copy over our FASTQ files to `/n/scratch2`, but first we will need to create a directory to copy them to. You can name this directory with your user login name.

```bash
$ mkdir /n/scratch2/$USER
```

Now we can copy over the entire directory of FASTQ files:

```bash
$ rsync -avr --progress ~/unix_lesson/raw_fastq /n/scratch2/$USER
```

Take a look at the directory on scratch and see that the files transferred successfully.

> **NOTE:** If you are copying files from a remote resource to your local laptop (or vice versa), the syntax will change. You will need to add the host address before specifying the path. Below is an example of command you would **run in a Terminal on your local laptop**:
> 

```bash
## DO NOT RUN
$ rysnc -avr --progress rc_training01@transfer.rc.hms.harvard.edu:/home/rc_traning01/unix_lesson/rnaseq/raw_data /path/on/local/machine
```


## General Bash commands

> *These materials are adapted from training materials generated by [FAS Research Computing at Harvard University](https://www.rc.fas.harvard.edu/training/training-materials/).*

* [Setting up](#setup)
* [Regular expressions (regex) in `bash`](#regex)
* [Reintroducing `grep`](#grep)
    * [`grep` examples](#example1)
* [Introducing `sed`](#sed)
    * [`sed` examples](#example2)
* [Reintroducing `awk`](#awk)
    * [`awk` examples](#example3)

***

## Setting up <a name="setup"></a>

```bash
$ cd ~/unix_lesson

$ cp /n/groups/hbctraining/ngs-data-analysis-longcourse/unix_lesson/bicycle.txt .
```
***

## Regular expressions (regex) in `bash` <a name="regex"></a>

"A regular expression, regex or regexp (sometimes called a rational expression) is a sequence of characters that define a search pattern. Usually this pattern is then used by string searching algorithms for "find" or "find and replace" operations on strings." -[Wikipedia](https://en.wikipedia.org/wiki/Regular_expression)

"The specific syntax rules vary depending on the specific implementation, programming language, or library in use. Additionally, the functionality of regex implementations can vary between versions of languages." -[Wikipedia](https://en.wikipedia.org/wiki/Regular_expression)

Below is a small subset of characters that can be used for pattern generation in `bash`.

**Special Characters:**

*  `.` : *match any character (except new line)
*  `\` : *make next character literal*
*  `^` : *matches at the start of the line*
*  `$` : *matches at the end of line*
*  `*` : *repeat match
*  `?` : *preceding character is optional
*  `[ ]` : *sequence of characters*
      * `[a-z]` : any one from a through z 
      * `[aei]` : either a, e, i
      * `[0-9]` : any one from 1 through 9

**Examples:**

* `.at` == any three-character string ending with "at", including "hat", "cat", and "bat".
* `ab*c` == "ac", "abc", "abbc", "abbbc", and so on*
* `colou?r` == "color" or "colour"*
* `[hc]at` == "hat" and "cat".
* `[^b]at` == all strings matched by .at except "bat".
* `[^hc]at` == all strings matched by .at other than "hat" and "cat".
* `^[hc]at` == "hat" and "cat", but only at the beginning of the string or line.
* `[hc]at$` == "hat" and "cat", but only at the end of the string or line.
* `\[.\]` == any single character surrounded by "[" and "]" since the brackets are escaped, for example: "[a]" and "[b]".
* `s.*` == "s" followed by zero or more characters, for example: "s" and "saw" and "seed" and "shawshank".

>  above examples excerpted from [Wikipedia](-[Wikipedia](https://en.wikipedia.org/wiki/Regular_expression))

**Non printable characters:**

* `\t` : tab
* `\n` : new line (Unix)
* `\s` : space

***

## Reintroducing `grep` (GNU regex parser) <a name="grep"></a>

As we saw yesterday, `grep` is a line by line parser that outputs lines matching a pattern of interest. In addition it also allows the use of regular expressions (regex) in the specified pattern, let's use some regular expressions with `grep`.

**`grep` usage:**

`cat file | grep pattern`

OR

`grep pattern file`

**`grep` common options:**

* `c` : count the number of occurrences
* `v` : invert match, print non-matching lines
* `R` : recursively through directories
* `o` : only print matching part of line
* `n` : print the line number

***

### Examples `grep` usage <a name="example1"></a>

```bash
$ grep -c bicycle bicycle.txt

$ grep "bicycle bicycle" bicycle.txt 

$ grep ^bicycle bicycle.txt
$ grep ^Bicycle bicycle.txt 

$ grep yeah$ bicycle.txt

$ grep [SJ] bicycle.txt

$ grep ^[SJ] bicycle.txt 
```
***

## Introducing `sed` <a name="sed"></a>

`sed` takes a stream of stdin and pattern matches and returns the replaced text to stdout ("Think amped-up Windows Find & Replace").

**`sed` usage:** 

`cat file | sed ‘command’`

OR

`sed ‘command’  file`

**`sed` common options:**

* `4d` : *delete line 4*
* `2,4d` : *delete lines 2-4*
* `/here/d` : *delete line matching here*
* `/here/,/there/d` : *delete lines matching here to there*
* `s/pattern/text/` : *switch text matching pattern*
* `s/pattern/text/g` : *switch text matching pattern globally*
* `/pattern/a\text` : *append line with text after matching pattern*
* `/pattern/c\text` : *change line with text for matching pattern*

### Examples `sed` usage <a name="example2"></a>

```bash
$ sed '1,2d' bicycle.txt

$ sed 's/Superman/Batman/' bicycle.txt 

$ sed 's/bicycle/car/' bicycle.txt 
$ sed 's/bicycle/car/g' bicycle.txt 

$ sed 's/.icycle/car/g' bicycle.txt

$ sed 's/bi*/car/g' bicycle.txt

$ sed 's/bicycle/tri*cycle/g' bicycle.txt | sed 's/tri*cycle/tricycle/g'   ## does this work?
$ sed 's/bicycle/tri*cycle/g' bicycle.txt | sed 's/tri\*cycle/tricycle/g'

$ sed 's/\s/\t/g' bicycle.txt
$ sed 's/\s/\\t/g' bicycle.txt

$ sed 's/\s//g' bicycle.txt
```
***

## Introducing `awk` <a name="awk"></a>

`awk` is command/script language that turns text into records and fields which can be selected to display as kind of an ad hoc database.  With awk you can perform many manipulations to these fields or records before they are displayed. 

**`awk` usage:** 

`cat file | awk ‘command’`

OR

`awk ‘command’  file`

**`awk` concepts:**

*Fields:*

Fields are separated by white space, or you can specifying a field separator (FS). The fields are denoted $1, $2, ..., while $0 refers to the entire line. If there is no FS, the input line is split into one field per character.

The `awk` program has some internal environment variables that are useful (more exist and change upon platform)

* `NF` – number of fields in the current record
* `NR` – number of the current record (somewhat similar to row number)
* `FS` – regular expression used to separate fields; also settable by option -Ffs (default whitespace)
* `RS` – input record separator (default newline)
* `OFS` – output field separator (default blank)
* `ORS` – output record separator (default newline)

`awk` also supports more complex statements, some examples are below: 

* if (expression) statement [ else statement ]
* while (expression) statement
* for (expression ; expression ; expression) statement
* for (var in array) statement
* do statement while (expression)

Please note that awk is a language on it's own, and we will only be looking at some examples os its usage.

### Examples `awk` usage <a name="example3"></a>

```bash
$ awk '{print $3}' reference_data/chr1-hg19_genes.gtf | head

$ awk '{print $3 | "sort -u"}' reference_data/chr1-hg19_genes.gtf 

$ awk '{OFS = "\t" ; if ($3 == "stop_codon") print $1,$4,$5,$3,$10}' reference_data/chr1-hg19_genes.gtf | head
$ awk '{OFS = "\t" ; if ($3 == "stop_codon") print $1,$4,$5,$3,$10}' reference_data/chr1-hg19_genes.gtf | sed 's/"//g' | sed 's/;//g' | head

$ awk -F "\t" '{print $10}' reference_data/chr1-hg19_genes.gtf | head
$ awk -F "\t" '{print $9}' reference_data/chr1-hg19_genes.gtf | head

# head other/bad-reads.count.summary
$ awk -F ":" 'NR > 1 {sum += $2} END {print sum}' other/bad-reads.count.summary

# head ../rnaseq/results/counts/Mov10_featurecounts.Rmatrix.txt
$ awk 'NR > 1 {sum += $2} END {print sum}' ../rnaseq/results/counts/Mov10_featurecounts.Rmatrix.txt
```


---

*This lesson has been developed by members of the teaching team at the [Harvard Chan Bioinformatics Core (HBC)](http://bioinformatics.sph.harvard.edu/). These are open access materials distributed under the terms of the [Creative Commons Attribution license](https://creativecommons.org/licenses/by/4.0/) (CC BY 4.0), which permits unrestricted use, distribution, and reproduction in any medium, provided the original author and source are credited.*

* *The materials used in this lesson were derived from training materials generated by [FAS Reseach Computing at Harvard University](https://www.rc.fas.harvard.edu/training/training-materials/) and [HMS Research Computing](https://rc.hms.harvard.edu/)*


