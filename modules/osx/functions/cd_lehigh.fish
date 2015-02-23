function cd_lehigh -d "Change directory to either a specified course's folder, or to the root for Lehigh files"
    set LEHIGH_ROOT "$HOME/Dropbox/Documents/Lehigh";
    cd "$LEHIGH_ROOT/$argv" ^ "/dev/null"; or echo "Course 'Lehigh/$argv' not found!";
end
