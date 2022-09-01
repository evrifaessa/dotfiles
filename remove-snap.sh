# https://github.com/evrifaessa/dotfiles
# Remove Snap from Debian-based systems.
# Haven't tested yet, but should work. Still be cautious and only do this on a freshly installed machine with no personal data.

# WARNING! You should remove installed Snap packages first
# Run "snap list" to list the installed packages
# Then run "snap remove --purge package-name" as superuser to remove each package
# There should be a way to automate this but I don't have an Ubuntu machine at hand and won't be able to test it

# Delete cache
sudo rm -rf /var/cache/snapd/

# Remove the Snap package and the related GNOME Software plugin
sudo apt remove --purge -y snapd gnome-software-plugin-snap

# Remove Snap settings and preferences from your home directory
rm -fr ~/snap

# Make sure Snap won't be installed again *by mistake*
# Some packages like chromium-browser depend on snapd and will force you to install the app as a Snap package, undoing what we've done
# Putting the Snap package on hold should avoid that
sudo apt-mark hold snapd
