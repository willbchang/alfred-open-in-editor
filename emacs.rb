require 'shellwords'

query = ARGV[0]

# Remove single quote around file path when selecting from Alfred File Browser
filepath = query.gsub(/^'|'$/, '')


# Avoid special character when running shell ommand.
# If it's not a file path, return empty string to make
# emacsclient call fail.
filepath = File.exist?(filepath) ? filepath.shellescape : ''

# If emacs server is not active or emacs is not active, open emacs
# otherwise open filepath with emacs.
# Without emacs client, it will lauch multiple Emacs instance instead of
# one Emacs with multiple window.

# https://www.gnu.org/software/emacs/manual/html_node/emacs/emacsclient-Options.html
# -c: --create-frame
# If filepath is a directory, open it in a new frame(window)
create_frame = File.directory?(filepath) ? '-c' : ''

cmd = "/usr/local/bin/emacsclient #{create_frame} -n #{filepath}"
unless system cmd
  `open -a Emacs #{filepath}`
end