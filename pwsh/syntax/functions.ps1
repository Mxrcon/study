# function with mandatory and type usage


Function loop_name {
param([parameter(mandatory)][string]$name,[int]$quantity=3)

for($i = 0; $i -lt $quantity; $i++){
Write-host $name
}

}

loop_name "davi" 2
loop_name -name "josué" -quantity 3
#loop_name 4 "davi" <- will fail


Function switch_name {
param([parameter(mandatory)][string]$name)
$name_len = $name.length
switch($name_len){
	{$name_len -eq 6} {$name_type = "Medium name"}
	{$name_len -lt 6} {$name_type = "Small Name"}
	{$name_len -gt 6} {$name_type = "Big name"}
	}
return $name_type
}

switch_name "davi"
#testing the return
$function_return = switch_name "eduardo"

Write-host "function return: "$function_return 
