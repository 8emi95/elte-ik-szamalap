if ($args.Length -lt 1 -or -not(Test-Path -Path $args[0] -PathType Leaf)) { #0tól indexel
	Write-Error "Hiba"
	exit(1)
}

$tartalom = Get-Content $args[0]
#tartalom[0][0] első sor első karaktere
foreach ($sor in $tartalom) {
	$szavak = $sor.Split(" ");
	Write-Output $szavak[1] $szavak[0]
}

exit(0)