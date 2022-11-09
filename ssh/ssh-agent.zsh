SKIP_SSH_AGENT="YES"
if [ $SKIP_SSH_AGENT != "YES" ]; then
# Launch ssh-agent
if (( $+commands[ssh-agent] ))
then
    eval "$(ssh-agent -s)"
fi