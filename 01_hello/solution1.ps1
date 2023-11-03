﻿<#

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
    [Parameter(ValueFromPipeline, ValueFromPipelineByPropertyName)]
    [string]
    $name = "World"
)
'Hello, ' + $name + '!'
