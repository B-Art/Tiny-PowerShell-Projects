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

param(
    [Parameter(Mandatory, ValueFromPipeline, ValueFromPipelineByPropertyName)]    
    [string[]]
    $word
)

Process {
    ($word).foreach{
        "Ahoy, Captain, $(('aeiou'.IndexOf($_.ToLower()[0]) -ge 0) ? "an" : "a") $($_) off the larboard bow!" }
}
