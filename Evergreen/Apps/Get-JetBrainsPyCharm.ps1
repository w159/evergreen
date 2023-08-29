function Get-JetBrainsPyCharm {
    <#
        .SYNOPSIS
            Get the current version and download URLs for each edition of PyCharm.

        .NOTES
            Author: Andrew Cooper
            Twitter: @adotcoop
    #>
    [OutputType([System.Management.Automation.PSObject])]
    [CmdletBinding(SupportsShouldProcess = $False)]
    param (
        [Parameter(Mandatory = $False, Position = 0)]
        [ValidateNotNull()]
        [System.Management.Automation.PSObject]
        $res = (Get-FunctionResource -AppName ("$($MyInvocation.MyCommand)".Split("-"))[1])
    )

    $Output = Get-JetBrainsApp -res $res
    Write-Output -InputObject $Output
}
