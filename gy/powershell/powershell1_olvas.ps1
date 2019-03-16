Read-Host -Prompt "Irj be egy szamot! >>" -OutVariable input #ha parameterul adjuk h mi legyen akk $ nem kell
$eredmeny = ToInt32($input)+2
Write-Output ($eredmeny)

#nem jo