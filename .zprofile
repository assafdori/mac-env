# Load Homebrew shell environment
eval "$(/opt/homebrew/bin/brew shellenv)"

# Define paths for second brain and iCloud (storing as arrays because of spaces in the path)
export SECOND_BRAIN=("/Users/assafdori/Library/Mobile Documents/com~apple~CloudDocs/Documents/The Garden")
export ICLOUD=("/Users/assafdori/Library/Mobile Documents/com~apple~CloudDocs")

# Create symbolic links
ln -sf "$SECOND_BRAIN" ~/garden
ln -sf "$ICLOUD" ~/icloud

# Define paths for repositories
export REPOS="$HOME/Repositories"
export GITUSER="assafdori"
export GHREPOS="$REPOS/github.com/$GITUSER"
export XDG_CONFIG_HOME="$HOME"/.config

# Create directories
mkdir -p "$XDG_CONFIG_HOME"/alacritty
mkdir -p "$XDG_CONFIG_HOME"/alacritty/themes

# Define aliases
alias repos="cd $REPOS"
alias ghrepos="cd $GHREPOS"
alias sb="cd \$SECOND_BRAIN"
alias icloud="cd \$ICLOUD"
alias ls='ls --color=auto'
alias l='ls -la'
alias ..="cd .."
alias c="clear"
alias xdg="cd \"$XDG_CONFIG_HOME/\""