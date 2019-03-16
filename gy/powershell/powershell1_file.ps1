if ($args.Length -lt 1 -or !(Test-Path $args[0])) {
    Write-Error "Adj meg egy filet."
    exit(1)
}

Get-Content $args[0]

exit(0)