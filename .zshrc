...

# node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# freestyle2, slimblade
/usr/bin/fs2

# zsh workarround to see snapd installed apps in the launcher
for f in /var/lib/snapd/desktop/applications/*.desktop; do if [ ! -f ~/.local/share/applications/${f##*/} ]; then ln -s $f ~/.local/share/applications; fi; done
