# Enigmatica 4

This is the official repository and issue-tracker for the modpack Enigmatica 4, for Minecraft 1.14.4

## Contributing

Follow these steps to setup your workspace:

### Windows / Mac
* Download the [Twitch App](https://www.twitch.tv/downloads) if you haven't already.
* Fork and clone the Enigmatica 4 repository to the Instances folder of the Twitch App, the default path is `C:\Users\User\Documents\Twitch\Minecraft\Instances`
* Double click the script `Development/setup.bat` to setup InstanceSync.
* Pull.
* Open the Twitch App, go to Mods > Minecraft, and you should see Enigmatica 4. If you already had Twitch App open, restart it.

You're done!

### Linux
##### Setup MultiMC Instance (Currently not possible 29-07-2019)
* Download [MultiMC](https://multimc.org/#Download) if you haven't already.
* Open MultiMC.
* Click Add Instance, choose Minecraft 1.14.4, click Ok.
* Click Edit Instance (right hand side)
* Click Install Forge, pick the latest version.

##### Repository Setup
* Fork the Enigmatica 4 repository
* Open the MultiMC Instance Folder, and go into the .minecraft folder - Open a Terminal and use the following commands:
```
git init                                           # Initialize git in folder
git remote add origin URLToYourEnigmatica4Fork     # Set remote origin to your Enigmatica 4 fork
git remote -v                                      # Verify remote
git fetch
git pull
```
* Now double click the script `Development/setup.sh` to setup InstanceSync.
* One more `git pull`

You're done!

#### Alternatives
It is possible to setup a development instance for Enigmatica 4 in other ways, if you don't like the above approaches.

## Optional Dependencies
* [Twitch App](https://www.twitch.tv/downloads) (Windows/Mac)
* [MultiMC](https://multimc.org/#Download) (Linux)

## Links

* [Curseforge](https://minecraft.curseforge.com/projects/enigmatica4)

* [Discord](https://discord.gg/HnWNd7X)
