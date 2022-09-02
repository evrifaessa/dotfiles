# https://github.com/evrifaessa/dotfiles
# Remove Snap from Arch-based systems.
# Haven't tested yet, but should work. Still be cautious and only do this on a freshly installed machine with no personal data.

# WARNING! You should remove installed Snap packages first
# Run "snap list" to list the installed packages
# Then run "snap remove --purge package-name" as superuser to remove each package
# There should be a way to automate this and I'll do it in the future

# Delete local files
sudo rm -r /var/lib/snapd

# Remove the snapd package
# Let's also break down what each letter in -Rnsc means:
# R is an alias to --remove
# n is an alias to --nosave and it removes the configuration files of the specified package(s)
# s is an alias to --recursive and it removes unnecessary dependencies
# c is an alias to --cascade and it removes packages and all packages that depend on them
# WARNING! The --cascade option should be used with care! It makes the operation recursive and it can remove many potentially needed packages. So, only run this on a freshly installed machine.
sudo pacman -Rnsc snapd

# Remove Snap settings and preferences from your home directory
rm -fr ~/snap
