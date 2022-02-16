#Script to list Active Control List for everything in a directory

$directory = dir

foreach ($item in $directory) {
      Get-Acl $item
      }

