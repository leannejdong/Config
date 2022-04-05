# Create a new repository on the command line and push to github
``` 
touch README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:leannejdong/useful-instruc.git
git push -u origin master
``` 
# Push an existing repository from the command line
``` 
git remote add origin git@github.com:leannejdong/useful-instruc.git
git push -u origin master
```

# in case of any merge conflicts. Try either one of below
# the latter does not create a new merge commit
```
git pull <remote>
git pull --rebase <remote>
```
# update your branch
at parent directory of your project, run

```
git submodule update --init --recursive
cd scaler_analyser
git checkout feature/SC-1657-pluginval---add-audio-detection-
git pull
cd ../scalercore
git checkout develop
cd ../scaler_music_core
git checkout develop
git fetch
git pull
cd ../scaler_analyser
git checkout feature/SC-1657-pluginval---add-audio-detection-

```
