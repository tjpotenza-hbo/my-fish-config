function trash -d "Move a file to MacOS's Trash folder"
    set -l trash_base "$HOME/.Trash/$argv";

    if not test -e "$trash_base"
        command mv "$argv" "$trash_base";
    else
        set -l duplicate 1;

        while test -e "$trash_base ($duplicate)"
            set duplicate (math "$duplicate + 1");
        end

        command mv "$argv" "$trash_base ($duplicate)";
    end
end
