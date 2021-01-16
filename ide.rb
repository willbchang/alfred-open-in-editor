require "shellwords"

query = ARGV[0]
editor = ARGV[1]
# Remove single quote around file path when selecting from Alfred File Browser
filepath = query.gsub(/^'|'$/, "")

# Check for Xcode Project
if Dir.glob("#{filepath}/*.xcodeproj").any?
  `xed #{filepath.shellescape}`
else
  system "open -a #{editor.shellescape} " +
    (filepath.shellescape if File.exist?(filepath)).to_s
end


