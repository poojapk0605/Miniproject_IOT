$a = 0

while ($a -lt 30) {
    $randomNumber = Get-Random -Minimum 20 -Maximum 50
    $timestamp = Get-Date -Format "o"  # ISO 8601 format
    $message = "$randomNumber C, $timestamp"
    .\mosquitto_pub -h 192.168.15.128 -t temperature -m $message -q 0
    Start-Sleep -Seconds 1  # Adding a sleep of 1 second
    $a++
}
