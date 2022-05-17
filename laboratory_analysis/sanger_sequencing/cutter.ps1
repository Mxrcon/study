$report_file = "./report_split.txt"

$parsed_report = Get-content $report_file | Select-Object -Skip 1

foreach($i in $parsed_report){
$line= $i.split("`t")
Write-host $line
$fasta_name = $line[1]
$start_cut = [int]$line[2] -1
$end_cut = [int]$line[3] -1

Write-Host $fasta_name
$fasta_content = Get-Content $fasta_name

Write-host $fasta_content[1]

$trimmed_seq = [String]::Concat($fasta_content[1][$start_cut..$end_cut])
Write-host $trimmed_seq

$fasta_header = ">" + $fasta_name.split(".")[0]

$fasta_header >> "output.txt"
$trimmed_seq >> "output.txt"


}
