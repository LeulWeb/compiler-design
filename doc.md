# Custom Programming Language Documentation

## Overview
This documentation provides an overview of the basic syntax and features of our custom programming language. The language includes variable declarations, assignments, arithmetic operations, conditional statements, loops, blocks of code, and comments.

## Keywords

- `let`: Used for declaring variables.
- `if`: Used for conditional statements.
- `else`: Used for alternative branches in conditional statements.
- `while`: Used for loops.
- `#`: Used for comments

## Syntax

### Variable Declaration
Variables are declared using the `let` keyword followed by the variable name and a semicolon.

```plaintext
let variable_name;
```

**Example:**
```plaintext
let x;
let y;
```

### Assignment
Variables can be assigned values using the `=` operator. The assignment statement ends with a semicolon.

```plaintext
variable_name = expression;
```

**Example:**
```plaintext
x = 10;
y = x + 5;
```

### Arithmetic Operations
The language supports basic arithmetic operations:

- Addition: `+`
- Subtraction: `-`
- Multiplication: `*`
- Division: `/`

**Example:**
```plaintext
x = 10 + 2 * 3;  // x will be 16
y = x - 4 / 2;   // y will be 14
```

### Conditional Statements
Conditional statements are used to execute code based on a condition. The `if` keyword is followed by a condition in parentheses and a statement or block of statements.

```plaintext
if (condition) {
    // statements
} else {
    // statements
}
```

**Example:**
```plaintext
if (x > 10) {
    x = x - 1;
} else {
    x = x + 1;
}
```

### Loops
Loops are used to execute a block of code repeatedly while a condition is true. The `while` keyword is followed by a condition in parentheses and a statement or block of statements.

```plaintext
while (condition) {
    // statements
}
```

**Example:**
```plaintext
let i;
i = 0;
while (i < 10) {
    i = i + 1;
}
```

### Blocks of Code
A block of code is a group of statements enclosed in curly braces `{ }`.

**Example:**
```plaintext
{
    let z;
    z = x + y;
}
```

### Comments
Comments are lines that start with the `#` sign. They are ignored by the compiler and are used for documentation purposes.

```plaintext
# This is a comment
let a;
a = 3;  # This is another comment
```

## Example Program

Below is a complete example program demonstrating the basic features of the language:

```plaintext
# Variable declarations
let x;
let y;

# Assigning values to variables
x = 10 + 2 * 3;
if (x > 10) {
    x = x - 1;
} else {
    x = x + 1;
}

# Another variable declaration
let y;
y = 5;

# Conditional statement with else
if (y < 10) {
    y = y + 10;
} else {
    y = y - 5;
}

# Using variables in expressions
let z;
z = x + y;

# While loop example
let i;
i = 0;
while (i < 10) {
    i = i + 1;
}

# This is a comment
let a;
a = 3;
```

---

This document now includes the loop functionality, providing a comprehensive guide to the basic syntax and features of your custom programming language.