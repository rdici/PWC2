<#
------------------------------------------
AUTHOR: Robert DiCicco
DATE  ; 2023-09-19
Challenge 235 Task 02 Duplicate Zaroes ( Powershell )
------------------------------------------
#>
$myints = @( @(1, 0, 2, 3, 0, 4, 5, 0),
             @(1, 2, 3),
             @(0, 3, 0, 4, 5)
            )
            
for ($i = 0; $i -lt $myints.Length; $i++ )
{
    $seen = @()
    write-host "Input: @ints = [", $myints[$i], "]"
    $ln = $myints[$i].Length - 1
    foreach ($x in $myints[$i]) {
        if ($x -eq 0) {
            $seen += 0
            $seen += 0
        } else {
            $seen += $x
        }
    }
    write-host "Output: [",$seen[0..$ln],"]`n"
}

<#
------------------------------------------
SAMPLE OUTPUT
.\DuplicateZeros.ps1

Input: @ints = [ 1 0 2 3 0 4 5 0 ]
Output: [ 1 0 0 2 3 0 0 4 ]

Input: @ints = [ 1 2 3 ]
Output: [ 1 2 3 ]

Input: @ints = [ 0 3 0 4 5 ]
Output: [ 0 0 3 0 0 ]
------------------------------------------
#>