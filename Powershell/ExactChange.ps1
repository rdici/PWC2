<#
--------------------------------------------------
AUTHOR: Robert DiCicco
DATE  : 2023-09-25
Challenge 236 Task 01 Exact Change ( Powershell )
--------------------------------------------------
#>

$bills = @( (5, 5, 5, 10, 20), (5, 5, 10, 10, 20),(5, 5, 5, 20))

foreach  ($paid in $bills ) {
    write-host "Input: @bills = [$paid]"
    $cnt = 0
    $change = 0
    $ln = $paid.Length
    while ( $cnt -lt $ln ) {
        $ticket = $paid[$cnt]
        $change_required = $ticket - 5
        switch ($ticket) {
            5 {$change += 5}
            10 {}
            20 {
                if ($change_required -gt $change) {
                    write-host "Output: false`n"
                    break
                } else {
                    write-host "Output: true`n"
                    break
                }
            }
        }
        $cnt += 1
    }
}

<#
--------------------------------------------------
SAMPLE OUTPUT
.\ExactChange.ps1

Input: @bills = [5 5 5 10 20]
Output: true

Input: @bills = [5 5 10 10 20]
Output: false

Input: @bills = [5 5 5 20]
Output: true
--------------------------------------------------
#>
