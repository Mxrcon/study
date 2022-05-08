# creating a list from integer range
$i = 1..5

Write-Host $i
Write-Host
# for each (like for in python)
foreach($x in $i){Write-Host $x}

Write-Host 
# for loop (like c)
for ($i = 1; $i -le 5; $i += 1)
{
    Write-Host $i
}

