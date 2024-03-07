# Mac Terminal Setup 🪄

As of February 2024 this setup is my personal preference development environment configuration.

### 1. Install Homebrew

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2. Add Homebrew to Path

```zsh
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/[username]/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

### 3. Install iTerm2

```zsh
brew install --cask iterm2
```

### 4. Install Git

```zsh
brew install git
```

### 5. Install Oh My Zsh

```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 6. Install Powerlevel10K theme for Oh My Zsh

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

### 7. Update VSCode Terminal Font

Open user settings.json and add this line:

```zsh
"terminal.integrated.fontFamily": "MesloLGS NF"
```

### 8. Configure Powerlevel10K

Restart iTerm2 or run this command:

```zsh
p10k configure
```

### 9. Change iTerm2 Colors Theme (Optional)

Download the following colors profile:

```zsh
curl https://raw.githubusercontent.com/assafdori/mac-env/main/retina.itermcolors --output ~/Downloads/retina.itermcolors
```

Apply theme by doing:

iTerm2 > Preferences > Profiles > Colors > Import theme > Select theme

### 10. Install ZSH Plugins

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

### 11. Enable Syntax Highlighting in Vim

```zsh
echo "syntax on" >> ~/.vimrc
```

### 12. Configuring ZED User Settings

```json
"theme": "Andromeda",
"vim_mode": false,
"ui_font_size": 13,
"buffer_font_size": 13,
"buffer_font_family": "MesloLGS NF"
```
