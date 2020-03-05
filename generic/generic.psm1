function Hello {
    param (
        $name
    )
    Write-Host Hello $name!
}

function CopyFiles ([string] $param1, $param2, $param3) {
    Write-Host -Object 'Lets copy files' -ForegroundColor Magenta
    Write-Host ($param1 ?? "param1 is NULL")
    Write-Output ($param2 ?? "param2 is NULL")
}

class MyClass {
    [string]$FirstName
    [string]$LastName
    [string]$Address
    [int]$ZipCode
}

function Foo {
    $myClass = [MyClass]::new()
    $myClass.FirstName = 'John'
    $myClass.LastName = 'Doe'
    $myClass.Address = '555 Hollywood Blvd, Los Angeles, CA'
    $myClass.ZipCode = '90210'
    Write-Output $myClass
}

Export-ModuleMember -Function Hello
Export-ModuleMember -Function CopyFiles
Export-ModuleMember -Function Foo