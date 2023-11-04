<#

Author:            Doug Finke
Email:             finked@hotmail.com

Blog:              https://dfinke.github.io/
Twitter:           https://twitter.com/dfinke
GitHub:            https://github.com/dfinke
YouTube:           https://www.youtube.com/dougfinke

PowerShell Meetup: https://www.meetup.com/NycPowershellMeetup/

LinkedIn:          https://www.linkedin.com/in/douglasfinke/
#>

[CmdletBinding()]
param (
    # Parameter help description
    [Parameter(ValueFromPipeline, ValueFromPipelineByPropertyName, ValueFromRemainingArguments)]
    [string[]]
    $Word,
    [Switch] $Sorted
)

Begin {
    $List = [array]($args)
}

Process {
    $List += $Word
}

End {
    $List = [array]($Sorted ? ($List | Sort-Object) : $List)
    "You are bringing {0}." -f $($List.GetUpperBound(0) -eq 0 ? '' : (($List[0..$($List.GetUpperBound(0) - 1)] -join ', ') + " and ") + $List[-1])
}
