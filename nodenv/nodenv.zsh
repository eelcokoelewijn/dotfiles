# Launch node-env node version manager

if (( $+commands[nodenv] ))
then
    eval "$(nodenv init -)"
fi