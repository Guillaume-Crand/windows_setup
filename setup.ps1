


function remove_internet_from_win_search {
    if ( -not (Test-Path -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer)) {
        New-Item HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer
    }
    
    Set-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer -Name "DisableSearchBoxSuggestions" -Value 1 -Type DWORD
}

# main part #

remove_internet_from_win_search
Write-Output "Internet has been removed from win search. A reboot is necessary to apply modifications"

