#add each topic folder to fpath so that they can add functions and completion scripts
for topic_folder ($DOTFILES/*) do
    if [ -d $topic_folder ]; then
        fpath=($topic_folder $fpath); 
        # autload the functions per topic
        topic_function_folder="$topic_folder/functions"
        if [ -d $topic_function_folder ]; then
            fpath=($topic_function_folder $fpath); 
            autoload -U $topic_function_folder/*(:t)
        fi;
    fi;
done