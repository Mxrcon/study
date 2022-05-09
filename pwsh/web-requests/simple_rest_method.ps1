$URL = 'https://globoplay.globo.com/v/10555775/'
$html = Invoke-RestMethod $URL
if ($html -match 'Exibição em.*-->(?<date>.*)\</span')
{
$date = $Matches.date
}
if ($html -match 'playkit-video-info__ep-title\">(?<title>.*)<\/h1'){
$title = $Matches.title
}
write-host $date
write-host $title
