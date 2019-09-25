function Hello {
    param (
        $name
    )
    Write-Host $name
}

Export-ModuleMember -Function Hello