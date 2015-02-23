# TJ's Fish Config #
--------------------

```
Disclaimer: What you'll see here isn't really designed for public usage,
            and certainly not to be "Plug-and-play".  Much of the code
            is fairly user-agnostic, but some of it is fairly embedded
            in my personal setup and workflow.  That said, I keep it
            publicly accessible and documented for my own edification
            and to potentially help someone else pursuing the same.
```

With that out of the way, here's a super quick rundown of how I configure my fish.  I wanted an easier way to spin up a bunch of different servers and VM's with the same shell I'm used to on OSX.

Currently includes 3 of my favorite themes from Oh-My-Fish, however writing my own custom theme is on the todo list.  Also didn't notice any license info on those themes, so if their yours and you want them remove let me know!

Here are the important files/folders in this config, and what they do:
```
~/.config/fish/
    config.fish <------------ This file, the main config settings
    modules/ <--------------- Holds groups of functions and settings
        linux/ <------------- Linux (Primarily Ubuntu) applicable config
            functions/ <----- Functions, or basically aliases
            path.fish <------ Keep modifications to $PATH easy to find
            variables.fish <- Keep environmental variables easy to find
        universal/ <--------- Generally applicable Unix config
            functions/ <----- Functions, or basically aliases
            path.fish <------ Keep modifications to $PATH easy to find
            variables.fish <- Keep environmental variables easy to find
        osx/ <--------------- OSX applicable config
            functions/ <----- Functions, or basically aliases
            path.fish <------ Keep modifications to $PATH easy to find
            variables.fish <- Keep environmental variables easy to find
    themes/ <---------------- Holds all the prompt themes
```

