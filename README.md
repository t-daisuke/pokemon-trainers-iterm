# Pokemon Master 🎮⚡

**iTerm2 automation tool using Pokemon-Terminal**

Let's start an adventure with Pikachu! An AppleScript tool that automatically splits iTerm2 into 6 panes and sets different Pokemon backgrounds for each pane.

## 🚀 Features

- **Automatic Pane Splitting**: Automatically splits iTerm2 into 6 panes (2 rows × 3 columns layout)
- **Custom Pokemon Settings**: Load your favorite Pokemon from `pokemon_list.txt` file
- **Fallback Function**: Shows completely random Pokemon when file is not found
- **Dynamic Customization**: Easy Pokemon team changes by editing files
- **Error Handling**: Safe and reliable operation guarantee

## 📋 Requirements

- macOS
- iTerm2
- [Pokemon-Terminal](https://github.com/LazoVelko/Pokemon-Terminal) installed
- Python 3.7 or later

## 🔧 Installing Pokemon-Terminal

```bash
# Install with pip
pip3 install git+https://github.com/LazoCoder/Pokemon-Terminal.git

# Install with npm (alternative)
npm install -g pokemon-terminal
```

## 📁 Project Structure

```
pokemon_master/
├── pokemon.scpt          # Main AppleScript
├── pokemon_list.txt      # Pokemon list configuration file
├── re.scpt              # Reference script
├── README.jp            # Japanese documentation
└── README.md            # English documentation (this file)
```

## 🎯 Usage

### Basic Usage

1. **Navigate to project directory**:
   ```bash
   cd /path/to/pokemon_master
   ```

2. **Run the script**:
   ```bash
   osascript pokemon.scpt
   ```

3. **Result**: iTerm2 opens a new window with 6 panes, each displaying different Pokemon backgrounds!

### Customization

#### Editing Pokemon List

Edit the `pokemon_list.txt` file to set your favorite Pokemon:

```txt
pikachu
charmander
jigglypuff
bidoof
chatot
mew
```

**Available Settings**:
- **Pokemon Names**: Use English names (e.g., `pikachu`, `charizard`, `blastoise`)
- **Random Specification**: Lines with `random` show completely random Pokemon
- **Empty Lines**: Automatically ignored

#### Example: Powerful Pokemon Team
```txt
mewtwo
dragonite
tyranitar
salamence
garchomp
dragapult
```

#### Example: Starter Pokemon Team
```txt
bulbasaur
charmander
squirtle
chikorita
cyndaquil
totodile
```

## 🎨 Layout

Pane arrangement after script execution:
```
┌─────────────┬─────────────┬─────────────┐
│    Pane 1   │    Pane 2   │    Pane 3   │
│  Pokemon 1  │  Pokemon 2  │  Pokemon 3  │
├─────────────┼─────────────┼─────────────┤
│    Pane 4   │    Pane 5   │    Pane 6   │
│  Pokemon 4  │  Pokemon 5  │  Pokemon 6  │
└─────────────┴─────────────┴─────────────┘
```

## ⚙️ Advanced Usage

### File-less Execution (Completely Random)
```bash
# Temporarily move pokemon_list.txt
mv pokemon_list.txt pokemon_list_backup.txt

# Run with random Pokemon
osascript pokemon.scpt

# Restore the file
mv pokemon_list_backup.txt pokemon_list.txt
```

### Multiple Team Management
```bash
# Prepare different team configurations
cp pokemon_list.txt team_legendary.txt
cp pokemon_list.txt team_starter.txt

# Switch teams
cp team_legendary.txt pokemon_list.txt
osascript pokemon.scpt
```

## 🐛 Troubleshooting

### Common Issues and Solutions

1. **"Your terminal emulator isn't supported" error**
   - Ensure you're running in iTerm2
   - Check `$TERM_PROGRAM` environment variable

2. **Pokemon not displaying**
   - Verify Pokemon-Terminal is correctly installed
   - Check installation status with `pokemon --help` command

3. **File reading errors**
   - Ensure `pokemon_list.txt` exists in the project directory
   - Check file permissions (must be readable)

4. **Pane splitting failure**
   - Update iTerm2 to the latest version
   - Verify AppleScript execution permissions

## 📚 References

- [Pokemon-Terminal GitHub](https://github.com/LazoVelko/Pokemon-Terminal)
- [iTerm2 Official Site](https://iterm2.com/)
- [AppleScript Language Guide](https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptLangGuide/)

## 🎉 License

This project is released under the MIT License.

---

**Enjoy your Pokemon terminal life!** 🎮✨

*Pikachu: "Pika pika!"*
