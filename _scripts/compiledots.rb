#!/usr/bin/env ruby

INPUT_DIR = 'assets/graphviz/'
OUTPUT_DIR = 'assets/img/'

def compile_dot(name)
   puts `dot -Tsvg "#{INPUT_DIR}#{name}.dot" -o "#{OUTPUT_DIR}#{name}.svg"`
   puts "[+] Image " + name + " updated"
end

compile_dot 'dev-snapshot'
