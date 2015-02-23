function cd -d "List directory contents after each directory change"
    builtin cd $argv; and ll;
end
