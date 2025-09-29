export EDITOR="nvim" # Neovim btw
export CPLUS_INCLUDE_PATH="/Library/Developer/CommandLineTools/SDKs/MacOSX15.2.sdk/usr/include/c++/v1" # Me trying to get c++ to work
export PATH="/opt/homebrew/bin:$PATH" # Homebrew
export PATH="$PATH:/Users/Santi/Library/Python/3.13/bin" # Python
export PATH="$PATH:/Applications/Ghostty.app/Contents/MacOS" # Ghostty

# Oh My Zsh (mainly for syntax highlighting atp)
export ZSH="$HOME/.oh-my-zsh"
zstyle ':omz:update' mode reminder
ENABLE_CORRECTION="true"
plugins=(git web-search zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Idk what this is, idk why this is here, I'm leaving this commented out just in case it breaks smth
# export PATH='/Users/Santi/.cargo/bin:/opt/homebrew/bin:/Library/Frameworks/Python.framework/Versions/3.13/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/usr/local/share/dotnet:~/.dotnet/tools:/opt/homebrew/bin:/Library/Frameworks/Python.framework/Versions/3.13/bin:/Users/Santi/.cargo/bin:/Users/Santi/Library/Python/3.13/bin:/Users/Santi/Library/Application Support/Code/User/globalStorage/github.copilot-chat/debugCommand:/Users/Santi/Library/Python/3.13/bin'
export PATH="$HOME/.local/bin:$PATH"

# Starship
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"

# Me trying to get c++ to work (again)
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

# Java
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Zoxide
eval "$(zoxide init zsh)"
alias cd="z" # Dont wanna mess with muscle memory

# Go
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
