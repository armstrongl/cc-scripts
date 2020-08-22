# cc-scripts
A collection of scripts for Minecraft ComputerCraft Tweaked (tweaked.cc). 

### `gitHubDownloader`
`gitHubDownloader` is a program that downloads GitHub repositories to a computer or turtle. Turtles have a built-in pastebin program that you can use to download this script so that you can clone GitHub respositories. The pastebin address is pastebin.com/wPtGKMam. Enter the command into a computer or turtle to download the file from pastebin to the root directory of the turtle/computer. 
```
pastebin get wPtGKMam /
```

Once you have the file downloaded, the syntax to use the gitHubDownloader program is `gitHubDownloader <username> <repositoryName> <localDirectory> <remoteDirectory>`. 

- `<username>` - the username of the GitHub user that owns the repository.
- `<repositoryName>` - the name of the GitHub respository. 
- `<localDirectory>` - the local directory to download the GitHub respository to. 
- `<remoteDirectory>` - the the directory (or subfolder) of the GitHub repository, You can use this to download only the files in the specified subfoldr. To download the entire repository use `/`. 
