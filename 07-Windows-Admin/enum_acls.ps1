#Script to list Active Control List for everything in a directory

$direcotry = dir

foreach ($item in $directory) {
      Get-Acl $item
      }

