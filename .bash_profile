if [ -f ~/.profile ]; then
   source ~/.profile
fi

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

if [ -f ~/.localrc ]; then
   source ~/.localrc
fi
