export editor=VIM
alias c='clear'
alias docs='cd ~/documents'
alias home='cd ~'
alias root='cd /'
alias dtop='cd ~/Desktop'
alias newvim="nvim"
alias oldvim="vim"
alias bashrc='vim ~/.bashrc'
alias sbash='source ~/.bashrc'
alias svim='source ~/.vimrc'
alias vimrc='vim ~/.vimrc'
alias la='ls -a'


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

remove() {
  echo are you sure you wish to de-initialize this git repository?
  read answer
  if [[ "$answer" == "yes" ]]
  then
    echo Okay. We gon remove it!
    cat ~/.bashrc
  else
    echo The git repo is still intact.
  fi
}


