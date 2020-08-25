# cc-scripts
A collection of scripts for Minecraft ComputerCraft Tweaked (tweaked.cc). 

### `gitHubDownloader`
`gitHubDownloader` is a program that downloads GitHub repositories to a computer or turtle. Turtles have a built-in pastebin program that you can use to download this script so that you can clone GitHub respositories. The pastebin address is pastebin.com/wPtGKMam. Enter the command into a computer or turtle to download the file from pastebin to the root directory of the turtle/computer. 
```
pastebin get wPtGKMam /
```

Once you have the file downloaded, the syntax to use the gitHubDownloader program is `gitHubDownloader <user> <repo> [path] [remote path] [branch]`. 

```
gitHubDownloader <user> <repo> [path] [remote path] [branch]
```

- `<user>` - the username of the GitHub user that owns the repository.
- `<repo>` - the name of the GitHub respository. 
- `<path>` - the local directory to download the GitHub respository to. 
- `<remote path>` - the the directory (or subfolder) of the GitHub repository, You can use this to download only the files in the specified subfoldr. To download the entire repository use `/`. 
A collection of scripts for Minecraft ComputerCraft Tweaked (tweaked.cc)

## Tips
- ComputerCraft programs automatically-terminate when the chunk is unloaded
  - To get around this, use a mod with a chunk loader item (e.g., something that simply keeps a chunk loaded when no players are present)
- ComputerCraft uses an _emulation_ of the normal shell and Lua experience
  - "Basic" operations you may be used to in the real world may not be supported (e.g., use `os.loadAPI("<SCRIPT_NAME>")` when loading in code from other files - NOT `require()` syntax)
  - Basically, if you find that you ***need*** to do something, check first if ComputerCraft provides a built-in way to do this
    - *If it doesn't, it may not be supported at all*
