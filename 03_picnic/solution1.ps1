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
    . ..\UtilityModules\Remove-StringSpecialCharacter.ps1
    $List = @()
    $List = [array]($args)
}

Process {
    If (($Word -eq 'System.Management.Automation.OrderedHashtable')) {
        $Sorted = $true
    } else {
        $List += $Word
    } 
}


End {
    $List = [array]($Sorted ? ($List | Sort-Object) : $List)
    $("You are bringing {0}." -f $(
            ($List.GetUpperBound(0) -eq 0 ? '' : $($List[0..$($List.GetUpperBound(0) - 1)] -Join ', ') + " and ") +
            $List[-1] <#-replace 'Pester,  and', '' | Remove-StringSpecialCharacter -SpecialCharacterToKeep ',', ' '#>
        )
    )
}
