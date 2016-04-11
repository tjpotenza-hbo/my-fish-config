#set -gx <VARIABLE> <VALUE>

# Set vagrant's metainfo directory to be unique to this
# host (Because it's synced online and consequently can
# be accessed by a number of different devices)
set -gx VAGRANT_DOTFILE_PATH ".vagrant-mbp"

# Configure docker globals so docker-machine's vm is connected
eval (docker-machine env)
