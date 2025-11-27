## How to create a shortcut to run a script

Make a new shortcut with right click and target your system's powershell.exe itself, probably located at

 `C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe`,
 
 then add to this path to powershell.exe a single space followed by these command line options, 

`-ExecutionPolicy Bypass -File "[path]"`

where you fill in `[path]` with the absolute path to wherever you put the script, brackets not included.

