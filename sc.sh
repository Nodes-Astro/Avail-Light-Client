#!/bin/bash

# Log dosyasının adı ve yolu
log_file="script_log.txt"

# Tarih ve saat bilgisini al
current_datetime=$(date +"%Y-%m-%d %H:%M:%S")

# curl komutunu kullanarak localhost:7000 adresine başlık bilgisi al
output=$(curl -I "http://localhost:7000/health" 2>&1)

# curl başarılı olduysa
if echo "$output" | grep -q "HTTP/1.1 200"; then
    echo "$current_datetime - NODE IS RUNNING.. OK" >> "$log_file"
# başarısız olduysa
elif echo "$output" | grep -q "Connection refused"; then
    echo "$current_datetime - FAIL CAUGHT. NODE IS RESTARTING..." >> "$log_file"
    screen -S 52433.light -X stuff $"curl curl -sL1 avail.sh | bash\n"
# diğer durumlarda
else
    echo "$current_datetime - ERROR: $output" >> "$log_file"
fi
