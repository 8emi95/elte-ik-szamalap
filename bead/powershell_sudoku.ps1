if ($args.Length -lt 1 -or !(Test-Path $args[0])) {
    Write-Error "Adj meg egy filet."
    exit(1)
}
#Get-Content $args[0]

$tartalom = Get-Content $args[0]

foreach ($sor in $tartalom) {
	$szamok = $sor.Split(" ")
    
    if (($szamok[0].Length -gt 1)  -or ($szamok[1].Length -gt 1) -or ($szamok[2].Length -gt 1) -or ($szamok[3].Length -gt 1) -or ($szamok[4].Length -gt 1) -or ($szamok[5].Length -gt 1) -or ($szamok[6].Length -gt 1) -or ($szamok[7].Length -gt 1) -or ($szamok[8].Length -gt 1)){
        Write-Error "Nem lehet ketjegyu szam."
        exit(2)
    }

    if (($szamok.Length -lt 9) -or ($szamok.Length -gt 9)) {
        Write-Error "Minden sorba es oszlopba 9 db szam kell."
        exit(3)
    }
       
    if (($szamok -notmatch '^\d+$') -or ($szamok -match 0)) {
        Write-Error "Csak szamokat tartalmazhat."
        exit(4)
    }

    $dupla = $szamok | Select-Object -Unique 
    if ($dupla.Length -lt 9) {
        Write-Error "Egy sorban/oszlopban egy szam csak egyszer fordulhat elo."
        exit(5)
    }
}

exit(0)