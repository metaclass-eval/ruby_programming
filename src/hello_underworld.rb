
File.write($0, "p $0.split('_').map(&:capitalize).join(', ').gsub(/.rb/, '!')")
puts `ruby #{$0}`
File.unlink $0
