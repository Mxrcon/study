# small if example with operator -eq (==)
# powershell uses -eq -ne like bash
if(1 -eq 1){echo equal}else{echo diff}

# you can use $() to run a pwsh command
"data: "+("$(Get-Date -UFormat "%d/%m/%Y %R")" -split "\s")[0]  

#pwsh has interesting string manipulation
$string = "$(Get-Date)" -replace "/","-"
Write-Host $string 

# use ${} to acess variables
$data = "07/05/2022"

Write-Host "data: ${data}"

# compare gnu date vs pwsh date
$gnu_date= "$(date +"%d/%m/%Y")"
$pwsh_date= "$(Get-Date -Uformat "%d/%m/%Y")"
if($gnu_date -eq $pwsh_date){
	Write-Host "same date"
}
else{
	Write-Host"different dates"
}


