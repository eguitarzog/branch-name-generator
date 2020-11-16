# branch-name-generator
A shell script generates the branch name which complies opengov's policy

Install
1. Clone this repo
2. In the cloned folder, add execution permission for users. 
```
chmod u+x bng.sh)
```
3. Add the sh file to PATH. 
```
export PATH=${YOUR_CLONED_FOLDER}/branch-name-generator:$PATH
```
4. Source it
```
source ~/.zshrc
#(or .bash_profile if you're not using zsh)
```
5. Alias it so it's easier to run the shell script. (I use `gb` here, as it stands for git branch)
```
alias gb=bng.sh
```
