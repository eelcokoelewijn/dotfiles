# Launch rb-env ruby version manager

if (( $+commands[rbenv] ))
then
    eval "$(rbenv init - zsh)"
fi