$yyyymmdd = Get-Date -Format "yyyyMMdd"
Start-Transcript (".\http" + $yyyymmdd + ".log") -Append

$HostUrl = 'https://github.com'
$LoginPath ='/gsx-s1000f'
$HostUri = New-Object System.Uri($HostUrl)
$Uri = New-Object System.Uri($HostUri, $LoginPath)
try {
    $res = Invoke-WebRequest -uri $Uri 

    echo $res
} catch {
} finally {
    Stop-Transcript
}
