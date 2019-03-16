if ($args.Length -lt 2 -or $args[0] -gt $args[1]){
    Write-Error "Ket szamot kell megadni, monoton novekvo sorrendben."
    exit(1)
}

#$a = 0;

$sum = 0;
for($i = $args[0]; $i -le $args[1]; ++$i){ #$i+=1
	$sum = $sum + $i;
}

Write-Output $sum;

exit(0)