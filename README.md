# branch-name-generator
A shell script generates the branch name which complies opengov's policy

Install
1. Clone this repo
2. In the cloned folder, add execution permission for users. 
```
chmod u+x bng.sh
```
3. Add the shell file to PATH (Edit in .zshrc or .bash_profile if you're not using zsh)
```
export PATH=${YOUR_CLONED_FOLDER}/branch-name-generator:$PATH

```
4. Alias it so it's easier to run the shell script. (Same file as step 4. I use `gb` here which stands for git branch)
```
alias gb='bng.sh'
```
5. Source it
```
source ~/.zshrc
#(or .bash_profile if you're not using zsh)
```
