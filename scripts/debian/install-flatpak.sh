# https://github.com/evrifaessa/dotfiles
# Install Flatpak and set up the Flathub repository
# Should work on Ubuntu 18.10 (Cosmic Cuttlefish) or later and Debian Buster and newer

# Install Flatpak
sudo apt install flatpak

# Set up the Flathub repository
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Now go ahead and restart your PC. I won't do that automatically.
