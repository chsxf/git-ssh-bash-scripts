# Color ANSI escape codes:
# https://stackoverflow.com/a/5947802
WHITE='\033[1;37m'
RESET_COLOR='\033[0m'

cd ~/.ssh

KEYS=`ls -1 *.pub`

COUNT_KEYS=`echo "$KEYS" | wc -l | xargs`
echo "Adding $COUNT_KEYS keys...\n"

for entry in $KEYS
do
	if [[ $entry =~ ^(.+)\.pub$ ]]; then
		echo "${WHITE}Adding '${BASH_REMATCH[1]} key${RESET_COLOR}"
		`ssh-add ${BASH_REMATCH[1]}`
	fi
done
