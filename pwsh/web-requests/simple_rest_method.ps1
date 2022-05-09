$URL = 'https://globoplay.globo.com/v/10555622/'
$html = Invoke-RestMethod $URL
if ($html -match 'Exibição em.*-->(?<date>.*)\</span')
{
$data = $Matches.date
}
write-host $data
