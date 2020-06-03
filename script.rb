# frozen_string_literal: true

require 'shellwords'

editor = 'RubyMine'
filepath = ARGV[0]
# Remove single quote around file path when selecting from Alfred File Browser
filepath = /^'.*'$/.match?(filepath) ? filepath[1..-2] : filepath
system "open -a #{editor} #{filepath.shellescape}"