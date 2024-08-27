# Bash Scripting Mini-Course

## Table of Contents
1. [Introduction](#introduction)
2. [Getting Started with Bash](#getting-started-with-bash)
   - [What is Bash?](#what-is-bash)
   - [Running Your First Script](#running-your-first-script)
3. [Basic Bash Commands](#basic-bash-commands)
   - [File Management](#file-management)
   - [Text Processing](#text-processing)
   - [System Information](#system-information)
4. [Bash Scripting](#bash-scripting)
   - [Variables and Data Types](#variables-and-data-types)
   - [Conditionals](#conditionals)
   - [Loops](#loops)
5. [Advanced Bash Techniques](#advanced-bash-techniques)
   - [Functions](#functions)
   - [Error Handling](#error-handling)
   - [Working with Arrays](#working-with-arrays)
6. [Automation and Task Scheduling](#automation-and-task-scheduling)
7. [Best Practices](#best-practices)
8. [Conclusion](#conclusion)

---

## Introduction

Welcome to the Bash Scripting Mini-Course! Bash, or the Bourne Again Shell, is a Unix shell and command language that is widely available on various operating systems such as Linux, macOS, and even Windows through Windows Subsystem for Linux (WSL). This course will guide you through the essentials of Bash, from basic commands to advanced scripting techniques, allowing you to automate tasks and manage your system effectively.

This course is designed for beginners and experienced users alike. By the end, you'll have a solid understanding of Bash and be able to write powerful scripts to automate repetitive tasks, manage system operations, and handle complex workflows.

## Getting Started with Bash

### What is Bash?

Bash is a command processor that typically runs in a text window where the user types commands that cause actions. Bash can also read and execute commands from a file, called a script. It's a powerful tool for anyone working in a Unix-like environment.

### Running Your First Script

To get started, let's write and run a simple Bash script.

1. Open your terminal.
2. Use a text editor like `nano` or `vim` to create a new file:

   ```bash
   nano my_first_script.sh

# Bash Scripting Guide

## Your First Script

Write the following script:

```bash
#!/bin/bash
echo "Hello, World!"
```

Save the file and exit the editor.

Make the script executable:

```bash
chmod +x my_first_script.sh
```

Run the script:

```bash
./my_first_script.sh
```

You should see the output `Hello, World!` printed on the screen.

## Basic Bash Commands

Bash commands are the building blocks of scripting. Here are some essential commands you'll frequently use.

### File Management

**Listing Files (ls)**: Lists the files and directories in the current directory.
```bash
ls
```

**Changing Directory (cd)**: Changes the current working directory.
```bash
cd /path/to/directory
```

**Copying Files (cp)**: Copies a file from one location to another.
```bash
cp source_file destination_file
```

**Moving/Renaming Files (mv)**: Moves or renames a file.
```bash
mv old_name new_name
```

**Deleting Files (rm)**: Removes files or directories.
```bash
rm file_name
```

### Text Processing

**Viewing File Contents (cat)**: Displays the contents of a file.
```bash
cat file_name
```

**Searching Inside Files (grep)**: Searches for a specific pattern in files.
```bash
grep "search_term" file_name
```

**Sorting Lines (sort)**: Sorts lines in a file.
```bash
sort file_name
```

**Counting Lines, Words, Characters (wc)**: Counts the number of lines, words, and characters in a file.
```bash
wc file_name
```

### System Information

**Display Date and Time (date)**: Shows the current date and time.
```bash
date
```

**Check Disk Usage (df)**: Displays the amount of disk space used and available on filesystems.
```bash
df -h
```

**Memory Usage (free)**: Shows the amount of free and used memory in the system.
```bash
free -h
```

## Bash Scripting

### Variables and Data Types

In Bash, you can store data in variables and use them later in your scripts.

```bash
#!/bin/bash
greeting="Hello"
name="Alice"
echo "$greeting, $name!"
```

Bash supports strings and integers. You can perform arithmetic operations using the expr command or double parentheses.

```bash
#!/bin/bash
num1=5
num2=3
sum=$((num1 + num2))
echo "Sum: $sum"
```

### Conditionals

Bash supports if-else statements for decision-making.

```bash
#!/bin/bash
if [ "$1" -gt 0 ]; then
    echo "Positive number"
else
    echo "Non-positive number"
fi
```

### Loops

Loops are used to repeat a block of code.

**For Loop:**
```bash
for i in {1..5}; do
    echo "Iteration $i"
done
```

**While Loop:**
```bash
counter=1
while [ $counter -le 5 ]; do
    echo "Counter: $counter"
    ((counter++))
done
```

## Advanced Bash Techniques

### Functions

Functions in Bash allow you to encapsulate code into reusable blocks.

```bash
#!/bin/bash
greet() {
    echo "Hello, $1!"
}

greet "Bob"
```

### Error Handling

You can handle errors in Bash using exit statuses and traps.

```bash
#!/bin/bash
command || { echo "Command failed"; exit 1; }
```

### Working with Arrays

Bash supports one-dimensional arrays.

```bash
#!/bin/bash
array=("apple" "banana" "cherry")
echo "First element: ${array[0]}"
```

## Automation and Task Scheduling

Bash scripts can be automated using cron jobs, which allow you to schedule tasks at specific intervals.

To edit the cron table:

```bash
crontab -e
```

Add a job:

```bash
0 5 * * * /path/to/script.sh
```

This runs script.sh every day at 5 AM.

## Best Practices

1. Use Comments: Comment your code to explain what it does.
2. Follow Naming Conventions: Use descriptive names for variables and functions.
3. Test Your Scripts: Test your scripts thoroughly to ensure they work as expected.
4. Handle Errors Gracefully: Always check the exit status of commands and handle errors appropriately.   
