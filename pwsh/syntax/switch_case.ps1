#slow, medium, fast
#$speed = "slow"
$speed = "fast"
#using switch cases to choose values

switch ($speed){
	slow {"$(start-sleep 30s)"}
	medium {"$(start-sleep 15s)"}
	fast {"$(start-sleep 5s)"}

}
# python doesn't have switch case lol
