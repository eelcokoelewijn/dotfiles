# Launch ssh-agent
if (( $+commands[ssh-agent] ))
then
    eval "$(ssh-agent -s)"
fi