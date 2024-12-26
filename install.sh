#!/bin/bash

# script to append my custom fish configs
mkdir -p ~/.config/fish/

for subdir in completions conf.d functions; do
    mkdir -p ~/.config/fish/$subdir
    for file in terminal/fish/$subdir/*; do
        # Check if the file exists in the target directory
        if [[ -f ~/.config/fish/$subdir/$(basename "$file") ]]; then
            # Append the content to the existing file
            cat "$file" >> ~/.config/fish/$subdir/$(basename "$file")
        else
            # Copy the file if it doesn't already exist
            cp "$file" ~/.config/fish/$subdir/
        fi
    done
done

# Append or create config.fish
if [[ -f ~/.config/fish/config.fish ]]; then
    cat terminal/fish/config.fish >> ~/.config/fish/config.fish
else
    cp terminal/fish/config.fish ~/.config/fish/config.fish
fi

# Append or create fish_variables
if [[ -f ~/.config/fish/fish_variables ]]; then
    cat terminal/fish/fish_variables >> ~/.config/fish/fish_variables
else
    cp terminal/fish/fish_variables ~/.config/fish/fish_variables
fi

# Ensure the alacritty configuration directory exists
mkdir -p ~/.config/alacritty/

# Replace the alacritty configuration file (appending is not ideal here)
cp terminal/alacritty.toml ~/.config/alacritty/alacritty.toml

# Replace the starship configuration file (appending is not ideal here)
cp terminal/starship.toml ~/.config/starship.toml
