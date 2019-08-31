# Operations on fractions

This is a Mac OS command line tool to perform basic arithmetic operations on fractional input values.

## Features

- Perform the following arithmetic operations on fractions
    - Addition
    - Subtraction
    - Multiplication
    - Division
- Supports mixed numbers, improper fractions and whole numbers as operands


## Build and Runtime Requirements

- Mac running MacOS 10.14 or later
- Xcode 10.2.1 and Swift 4

## Build/Run instructions

1. Launch Terminal
2. Navigate to root directory of  `xcode project`
``` bash
$ cd ~/OperationsOnFractions
```
3. Navigate to the bin directory of the project
``` bash
$ cd bin
```
4. Use the below command to provide the input
``` bash
$ ./OperationsOnFractions ? <operand1> <operator> <operand2>
```
    - `./OperationsOnFractions`: `./` followed by application name
    - `?`: This is the entry point for the input parameters. Parameters provided after `?` are considered
    - `<operand1>`: left operand fraction input to the operation (valid input values are whole numbers, proper fraction like 2/3 or improper fractions like 15/3 or mixed fraction like 1_3/4)
    - `<operator>`: basic arithmetic operators. Valid operators are +, -, *, /
        **Note:** When using `*` as operator you might receive an error saying Unsupported/Invalid operator because `*` is a shell wilcard and has special meaning to the shell. So inorder to escape it from the shell we use `\*` instead of `*` as operator. Ex: Input should be `3/4 \* 1/2` instead of `3/4 * 1/2`
    - `operand2`: right operand fraction input to the operation (valid input values are whole numbers, proper fraction like 2/3 or improper fractions like 15/3 or mixed fraction like 1_3/4)

## General Instructions for input parameters
    - Legal operators shall be *, /, +, - (multiply, divide, add, subtract)
    - Operands and operators shall be separated by one or more spaces
    - Mixed numbers will be represented by whole_numerator/denominator. e.g. "3_1/4"
    
### Valid inputs are:
``` bash
$ ./OperationsOnFractions ? 1/4 \* 1
```
or

``` bash
$ ./OperationsOnFractions ? 3_1/4 + 1/3
```


