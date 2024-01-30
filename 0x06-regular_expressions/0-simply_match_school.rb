#!/usr/bin/ruby
# Check if an argument is provided
if ARGV.empty?
  puts "Usage: #{__FILE__} <string>"
  exit 1
end

# Get the argument
input_string = ARGV[0]

# Define the regular expression
regexp = /School/

# Check if the input matches the regular expression
if input_string.match?(regexp)
  puts "The input '#{input_string}' matches the pattern 'School'."
else
  puts "The input '#{input_string}' does not match the pattern 'School'."
end
