#!/usr/bin/env ruby

INPUT_DIR = 'assets/graphviz/'
OUTPUT_DIR = 'assets/img/'

def compile_dot(name)
   puts `dot -Tsvg "#{INPUT_DIR}#{name}.dot" -o "#{OUTPUT_DIR}#{name}.svg"`
   puts "[+] Image " + name + " updated"
end

Dir[INPUT_DIR + "/**/*.dot"].each do |filename|
  if File.file? filename 
  	compile_dot File.basename(filename, ".dot")
  end
end
