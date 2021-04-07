#!/usr/bin/env ruby
# encoding: utf-8
# Version = '20210407-055906'

JP_DIR = "doc/jp"
EN_DIR = "doc/en"
DE_DIR = "doc/de"

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
de_file = File.join(DE_DIR, File.basename(org_md).gsub(/.md$/, '_de.md'))
open(jp_file, "w") do |jp_out|
open(en_file, "w") do |en_out|
open(de_file, "w") do |de_out|
  File.readlines(org_md).each do |line|
    if line =~ /----/
      flag = true
    end
    #if line =~ /([^ -~]+)\s\([ -~]+\)/
    #if line =~ /([^ -~]+)\s/
    if flag and line =~ /^([\*\d]*\s*)([ -~]+)\s\(([ -~öäüÖÄÜß]+)\)\s\((.*[^ -~].*)\)$/
      dot = $1
      en = $2
      de = $3
      jp = $4
      en_out.puts dot + en
      de_out.puts dot + de
      jp_out.puts dot + jp
      puts "EN: " + en
      puts "DE: " + de
      puts "JP: " + jp
      puts
    else
      en_out.print line
      de_out.print line
      jp_out.print line
      print line
    end
  end
end
end
end

warn "# #{en_file} generated"
warn "# #{de_file} generated"
warn "# #{jp_file} generated"

