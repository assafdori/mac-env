# Mac Terminal Setup 🪄

As of February 2024 these instructions are my personal preference default settings for iTerm2 and VS Code.

### Install Homebrew
```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Add Homebrew to Path
```zsh
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/[username]/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

### Install iTerm2
```zsh
brew install --cask iterm2
```

### Install Git
```zsh
brew install git
```

### Install Oh My Zsh
```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Install Powerlevel10K theme for Oh My Zsh
```zsh
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```

Open "~/.zshrc file and change "ZSH_THEME" to:
```zsh
ZSH_THEME="powerlevel10k/powerlevel10k"
```
To force the update run:
```zsh
source ~/.zshrc
```

### Update VSCode Terminal Font
Open settings.json and add this line:
```zsh
"terminal.integrated.fontFamily": "MesloLGS NF"
```

### Configure Powerlevel10K
Restart iTerm2 or run this command:
```zsh
p10k configure
```

### Change iTerm2 Colors Theme (Optional)
Download the following colors profile:
```zsh
curl https://raw.githubusercontent.com/assafdori/mac-env/main/coolnight.itermcolors --output ~/Downloads/coolnight.itermcolors
```
Apply theme by doing:

iTerm2 > Preferences > Profiles > Colors > Import theme > Select theme

### Install ZSH Plugins
Install zsh-autosuggestions
```zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
Install zsh-syntax-highlighting
```zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
Open "~/.zshrc file and add above plugins, example:
```zsh
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
```
Load new plugins by running:
```zsh
source ~/.zshrc
```
