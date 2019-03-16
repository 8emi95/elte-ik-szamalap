if ($args.Length -lt 1 -or -not(Test-Path -Path $args[0] -PathType Leaf)) { #0tól indexel
	Write-Error "Hiba"
	exit(1)
}

$tartalom = Import-Csv -Path $args[0]
