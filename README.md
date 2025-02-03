This repository contains a shell script that aims to find the largest number within a text file.  The script includes a known bug that causes unexpected behavior when the input file contains non-numeric data or is empty. A solution is provided to address this bug.

**Bug:** The script fails to handle non-numeric input and empty files, leading to incorrect results or errors. 

**Solution:** The solution adds robust error handling and input validation to prevent these issues. The improved script checks for non-numeric input, handles empty files gracefully, and provides informative error messages.