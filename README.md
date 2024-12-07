# Shell Script Bug: Handling Files with Spaces

This repository demonstrates a common bug in shell scripts when handling filenames containing spaces. The `bug.sh` script attempts to iterate through files in a directory and process them. However, it fails to correctly handle filenames with spaces. The solution (`bugSolution.sh`) demonstrates the correct approach.

## Bug Description

The original script uses improper quoting in the `for` loop.  When a filename contains a space, it is treated as two separate arguments, leading to errors. 

## Solution

The solution uses proper quoting and word splitting techniques to ensure that filenames with spaces are handled correctly.

## How to Reproduce

1. Clone the repository.
2. Run `bash bug.sh`.
3. Observe the incorrect behavior. 
4. Run `bash bugSolution.sh`.
5. Observe the corrected behavior.