#
# .profile created by JohnyDevTx (Joshua A. Muth)
# Feel free to contact me at JohnyDevTx+QnA@gmail.com
# You may edit, alter, redistrabute, etc. this file as you see fit as long as you give me credit
# 
#
# Setting up my prompt 
export PS1="\[\e[31m\]\A\[\e[m\]--\[\e[34m\]\u\[\e[m\]\[\e[31m\]:\[\e[m\]\[\e[34m\]\w\[\e[m\]\[\e[31m\]\\$\[\e[m\] "
echo
echo 'Linux; Where ~ is always $HOME sweet home!'
echo
echo 'Welcome back to your $HOME Joshua!'
echo 'Have a fun and productive time'

# Checking if user bin exsits and if it does including it in $PATH
if [ -d ~/bin ]; then
	export PATH=$PATH:$HOME/bin
fi

# Prompting user to set up their backspace
echo
echo -n 'Please press your backspace key'
read -sn 1 backspc
stty erase "$backspc"
echo

# TODO Find a way to figure out if using YUM or APT

# Setting my timezone
export TZ=CST6CDT

# Simplifing todo.sh use if it is installed
if [ -a ~/.todo.sh ]; then
	alias t="~/.todo.sh -d ~/.todo.cfg"
fi

# Because I'm lazy...
alias cl="clear"

# Setting up my git stuff
git config --global user.name 'johnydevtx'
git config --global user.email 'johnydevtx+github@gmail.com'

# Updating my dotfiles to most recent version
# I know this is a horrid way of doing this, but I do not have time to make it better
# TODO make this better
cd ~/dotfiles&&git pull > ~/.gitlab.log &

