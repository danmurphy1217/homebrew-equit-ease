# Steps For Updating:

1. Run `brew tap` to get the latest changes from the danmurphy1217/homebrew-equit-ease repository. This repository will be updated with the latest SHA256 and URL for the Python package.
Example --
```shell
brew tap danmurphy1217/equit-ease --force # force is optional...
```
2. Run `brew upgrade` to utilize the newly-updated tap to install the python package files.
Example --
```shell
brew upgrade danmurphy1217/equit-ease/equit-ease
```
3. Verify the update worked using `equity --version` || `equity -v`
Example --
```shell
equity -v
```
