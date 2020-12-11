require "shellwords"


# Remove single quote around file path
# Extra '' are added when selecting from Alfred File Browser
filepath = ARGV[0].gsub(/^'|'$/, "")

if File.exist?(filepath)
  # https://www.gnu.org/software/emacs/manual/html_node/emacs/emacsclient-Options.html
  create_frame = File.directory?(filepath) ? "-c" : ""
  cmd = "/usr/local/bin/emacsclient #{create_frame} -n #{filepath.shellescape}"
  # If system cmd gets an error, it will run the code inside instead
  # Usually emacs server doesn't start, or emacs isn't activate
  unless system cmd
    `open -a Emacs #{filepath.shellescape}`
  end
else
  # open -a Emacs doesn't bring window to front for some unknown reason
  `osascript -e 'tell application "Emacs" to activate'`
end
