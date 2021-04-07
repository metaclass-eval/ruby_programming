#!/usr/bin/env ruby
# encoding: utf-8
# Version = '20210315-054755'

JP_DIR = "doc/jp"
EN_DIR = "doc/en"

unless org_md=ARGV[0]
  puts <<-eos
  usage:
   #{File.basename(__FILE__)} [orig.md]
  eos
  exit
end

flag = false
jp_file = File.join(JP_DIR, File.basename(org_md).gsub(/.md$/, '_jp.md'))
en_file = File.join(EN_DIR, File.basename(org_md).gsub(/.md$/, '_en.md'))
open(jp_file, "w") do |jp_out|
open(en_file, "w") do |en_out|
File.readlines(org_md).each do |line|
  if line =~ /----/
    flag = true
  end
  #if line =~ /([^ -~]+)\s\([ -~]+\)/
  #if line =~ /([^ -~]+)\s/
  if flag and line =~ /^([\*\d]*\s*)([ -~]+)\s\((.*[^ -~].*)\)$/
    dot = $1
    en = $2
    jp = $3
    jp_out.puts dot + jp
    en_out.puts dot + en
    #puts "JP: " + jp
    #puts "EN: " + en
  else
    jp_out.print line
    en_out.print line
    #print line
  end
end
end
end

warn "# #{jp_file} generated"
warn "# #{en_file} generated"

