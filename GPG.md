# GPG-Git configuration

## Check existing GPG keys

`gpg --list-secret-keys --keyid-format=long`

## Create a GPG keypair

`gpg --full-generate-key`

 * A private key is required for signing commits or tags. From the list of GPG keys, copy the long form of the GPG key ID you'd like to use. In this example, the GPG key ID is 3AA5C34371567BD2:

```shell
gpg --list-secret-keys --keyid-format=long                                                     ✔ 
/home/leannejd/.gnupg/pubring.kbx
------------------------------------
sec   4096R/3AA5C34371567BD2 2016-03-10 [expires: 2017-03-10]
uid                          Hubot 
ssb   4096R/42B317FD4BA89E7A 2016-03-10
```

* Paste the text below, substituting in the GPG key ID you'd like to use. In this example, the GPG key ID is 3AA5C34371567BD2:

```shell
gpg --armor --export 3AA5C34371567BD2
# Prints the GPG key ID, in ASCII armor format

```

* Copy your GPG key, beginning with -----BEGIN PGP PUBLIC KEY BLOCK----- and ending with -----END PGP PUBLIC KEY BLOCK-----.

* Add GPG key to your github account

## Tell Git your signing key

* Set your GPG signing key in Git
`git config --global user.signingkey 3AA5C34371567BD2`

* Add your GPG key to bash profile, 

```shell
if [ -r ~/.bash_profile ]; then echo 'export GPG_TTY=$(tty)' >> ~/.bash_profile; \
  else echo 'export GPG_TTY=$(tty)' >> ~/.profile; fi
```
or `,zshrc`

```shell
if [ -r ~/.zshrc ]; then echo 'export GPG_TTY=$(tty)' >> ~/.zshrc; \
  else echo 'export GPG_TTY=$(tty)' >> ~/.zprofile; fi
```

* Add your key ID to Git and tell it to use the gpg2 binary for signing

```shell
git config --global user.signingkey 3AA5C34371567BD2
git config --global gpg.program gpg2
```

* Tell git we can use the private ky by amending the last commit in a project

`git commit -s -S --amend`

before pushing, don't forget `git rebase --all`

The `-s` switch appends your name and email to the bottom of the commit message (so-called signing off a commit) while `-S` signs the commit using our GPG private key.

* Make git sign all commits by default by running

`git config --global commit.gpgsign true`

## Cache GPG passphase using gpg-agent

* Check if you have it installed and configured.

```shell
pacman -Ss gnupg                                          ✔  3s  
core/gnupg 2.2.32-2 [installed]
    Complete and free implementation of the OpenPGP standard
```

* Make sure `~/.gnupg/gpg.conf` 

```shell
default-key 3AA5C34371567BD2
use-agent
```
and `~/.gnupg/gpg-agent.conf` exist. (Or simply create them)

```shell
use-standard-socket
default-cache-ttl 3600
```

* Add the following lines to your user’s shell profile file e.g `~/.bash_profile:`

```shell
export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye> /dev/null
```
<!---
```shell
export GPG_TTY=$(tty)
[ -f ~/.gnupg/gpg-agent-info ] && source ~/.gnupg/gpg-agent-info
if [ -S "${GPG_AGENT_INFO%%:*}" ]; then
    export GPG_AGENT_INFO
else
    eval $( gpg-agent --daemon --options ~/.gnupg/gpg-agent.conf --write-env-file ~/.gnupg/gpg-agent-info )
fi

```

Then reload the profile file

```shell
killall gpg-agent
. ~/.bash_profile
```

--->
Test to see if gpg-agent can cache your private key’s passphrase by amending your last commit:

`git commit -s -S --amend`

