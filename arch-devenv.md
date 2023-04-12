## Editor

- vscode

1. https://code.visualstudio.com/download

2. unpack
`tar -xzvf code-stable-x64-1680777404.tar.gz`

3. create symbolic link to executable
`sudo ln -s /opt/VSCode-linux-x64/bin/code /usr/bin/code`
(The /opt directory is intended for installing software that is not part of the operating system's package manager. 
By installing software to /opt, one can keep it separate from the rest of the system and avoid conflicts with other 
software packages.)

4. navigate to your project directory, run
`code .`
