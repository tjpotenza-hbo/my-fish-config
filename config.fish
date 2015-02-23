# SEE README.md

set config_path $HOME/.config/fish # The directory this file sits in
set theme agnoster                 # Pick theme

# Config settings to show the username and host, as long as the current username
# is NOT tj.  Therefore shows username@host on most virtual machines/ssh'd servers.
set theme_display_user yes
set default_user tj

function load_function_dir -d "Config function that loads all *.fish files in the passed directory"
    if test -e "$argv[1]"
        for x in (ls "$argv[1]" | grep '\.fish$')
            . "$argv[1]/$x"
        end
    end
end

function load_module -d "Config function that loads a given module"
    set -l module_path "$config_path/modules/$argv[1]"
    . "$module_path/path.fish"
    . "$module_path/variables.fish"
    load_function_dir "$module_path/functions"
end

# Load everything that we use regardless of platform
load_module "universal"

# Conditionally load the os-specific stuff
switch (bash -c "echo \$OSTYPE")
    case 'darwin*'
        load_module "osx"
    case 'linux-gnu'
        load_module "linux"
end

# Load the specified theme
if not set -q $theme # Basically "if not unset..."
    load_function_dir "$config_path/themes/$theme"
end
