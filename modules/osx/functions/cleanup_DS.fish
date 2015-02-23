function cleanup_DS -d "Recursively remove .DS_Store files"
    find . -type f -name '*.DS_Store' -ls -delete;
end
