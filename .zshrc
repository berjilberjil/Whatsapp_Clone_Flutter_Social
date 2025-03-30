export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
export PATH=$HOME/development/flutter/bin:$PATH
export PATH="/usr/local/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:/Users/berjil/Documents/Flutter Projects/whatsapp_clone_flutter/platform-tools

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/berjil/.dart-cli-completion/zsh-config.zsh ]] && . /Users/berjil/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/Library/Ruby/Gems/$(ruby -e "print RUBY_VERSION")/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH=$PATH:/opt/homebrew/lib/ruby/gems/3.4.0/bin





