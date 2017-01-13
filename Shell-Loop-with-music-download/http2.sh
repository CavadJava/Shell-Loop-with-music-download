URL="http://www.talkenglish.com/AudioTE1/E01/sentence/E001S1.mp3"
STATUS_CODE=$(curl --silent --output /dev/stderr --connect-timeout 3 "%{http_code}" $URL)

echo
echo

if test $STATUS_CODE -ne 200; then
    printf '[\033[1;31merror\033[m]\t%s\n' "Unable to connect to Anvil Connect discovery endpoint"
    exit 1
else
    printf '[\033[1;32mpass\033[m]\t%s\n' "Successfully connected to Anvil Connect discovery endpoint"
    exit 0
fi
