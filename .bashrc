export editor=VIM
alias c='clear'
alias docs='cd ~/documents'
alias home='cd ~'
alias root='cd /'
alias dtop='cd ~/Desktop'
alias dbox='cd ~/Dropbox'
alias box='cd ~/Box\ Sync'
alias gdrive='cd ~/Google\ Drive'
alias vim="nvim"
alias vi="nvim"
alias oldvim="vim"
alias bashrc='vim ~/.bashrc'
alias self='vim ~/updates.txt'
alias boo='vim ~/.foo'
alias sourcebash='source ~/.bashrc'
alias vimrc='vim ~/.vimrc'

alias sourcevim='source ~/.vimrc'


gp() {
    git add .bashrc
    git add .vimrc
    git commit -m "Pushing bash and vim"
    git push -u origin master
}

foo() {
  echo hello world!!!!!
}

set() {
  git remote set-url origin https://github.com/kdog3682/chromebook
}

get() {
  git remote get-url origin
}
