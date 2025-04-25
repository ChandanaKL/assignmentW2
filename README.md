Changes Made to script:
	1. Fixed the loop issue: The script is treating the variable a as an array, but it’s a multi-line string, so I splited it by line using IFS (Internal Field Separator).
	2. Fixed path checking: The regular expression to detect Windows paths (^[A-Z]:\\) is fine, but we need to ensure it works correctly for paths that contain spaces or other characters( 
       backward and forward slashes).
	3. Corrected appending logic: Instead of using $a inside the loop (which refers to the entire string), used $i to refer to the current path.
   4.Fixed echoing of paths: I added a suitable way to accumulate and print each path 
