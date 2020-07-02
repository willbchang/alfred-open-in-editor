require 'shellwords'

query = ARGV[0]

# Remove single quote around file path when selecting from Alfred File Browser
filepath = /^'.*'$/.match?(query) ? query[1..-2] : query

# Avoid special character when running shell ommand.
# If it's not a file path, return empty string to make
# emacsclient call fail.
filepath = File.exist?(filepath) ? filepath.shellescape : ''

# If emacs server is not active or emacs is not active, open emacs
# otherwise open filepath with emacs.
# Without emacs client, it will lauch multiple Emacs instance instead of
# one Emacs with multiple window.
unless system "/usr/local/bin/emacsclient -n #{filepath}"
  `open -a Emacs #{filepath}`
end