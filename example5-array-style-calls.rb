p = Proc.new {|a| puts "you sent in #{a}" }

p.call('foo')
p['bar']
