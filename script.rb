# frozen_string_literal: true

require 'shellwords'

filepath = ARGV[0]
editor = ARGV[1]
# Remove single quote around file path when selecting from Alfred File Browser
filepath = /^'.*'$/.match?(filepath) ? filepath[1..-2] : filepath
system "open -a #{editor.shellescape} #{filepath.shellescape}"
