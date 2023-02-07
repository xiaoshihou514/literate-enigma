args = ARGV.to_a
if args[0] == '-i'
  exp = /#{args[1]}/i 
  file = args[2]
else
  exp = /#{args[0]}/
  file = args[1]
end
num = 1
File.open(file, 'r').each {|line| puts "#{num} #{line}" if exp.match(line); num +=1 ;}
