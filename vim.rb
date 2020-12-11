require "shellwords"

query = ARGV[0]
vim = ARGV[1]
terminal = ARGV[2]

# Remove single quote around file path when selecting from Alfred File Browser
filepath = query.gsub(/^'|'$/, "")

# If it's not a file path, return empty string.
# Avoid special character when running shell ommand.
filepath = File.exist?(filepath) ? filepath.shellescape : ""

# If there isn't a vim instance running in Terminal,
# or the filpath is not empty, run a vim instance with filepath.
# Else, open the terminal app.
if `ps | grep '[v]im'`.empty? || filepath != ""
  `osascript -e 'tell app "#{terminal}" to do script "#{vim} #{filepath}" activate'`
else
  `open -a #{terminal}`
end
