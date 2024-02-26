# Mac Terminal Setup 💻


#### Install Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

#### Add Homebrew to Path
```
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/[username]/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

#### Install iTerm2
```
brew install --cask iterm2
```

#### Install Git
```
brew install git
```

#### Install Oh My Zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### Install Powerlevel10K theme for Oh My Zsh
```
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```

Open "~/.zshrc file and change "ZSH_THEME" to:
```
ZSH_THEME="powerlevel10k/powerlevel10k"
```
To force the update run:
```
source ~/.zshrc
```

#### Update VSCode Terminal Font
Open settings.json and add this line:
```
"terminal.integrated.fontFamily": "MesloLGS NF"
```

#### Configure Powerlevel10K
Restart iTerm2 or run this command:
```
p10k configure
```

#### Change iTerm2 Colors Theme (Optional)
Download the following colors profile:
```
curl https://raw.githubusercontent.com/josean-dev/dev-environment-files/main/coolnight.itermcolors --output ~/Downloads/coolnight.itermcolors
```
iTerm2 > Preferences > Profiles > Colors > Import theme > Select theme

#### Install ZSH Plugins
Install zsh-autosuggestions
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
Install zsh-syntax-highlighting
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
Open "~/.zshrc file and add above plugins, example:
```
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
```
Load new plugins by running:
```
source ~/.zshrc
```
