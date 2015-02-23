function ql -d "Open any file in MacOS Quick Look"
    qlmanage -p "$argv" >/dev/null ^/dev/null;
end
