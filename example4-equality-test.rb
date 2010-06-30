p1 = Proc.new { "foo" }
p2 = Proc.new { "foo" }
p3 = p1.dup
p4 = Proc.new {|a| "foo" }
p5 = Proc.new {|b| "foo" }
p6 = Proc.new {|c| puts c}
p7 = Proc.new {|c| puts c}

puts "p1 == p2: #{p1 == p2}"
puts "p1 == p3: #{p1 == p3}"
puts "p2 == p3: #{p2 == p3}"
puts "p1 == p4: #{p1 == p4}"
puts "p4 == p5: #{p4 == p5}"
puts "p6 == p7: #{p6 == p7}"

puts "BUT WAIT!  You can make 2 procs that output the same string equal!"

string = "bar"
p8 = Proc.new { string }
p9 = Proc.new { string }

puts "p8 == p9: #{p8 == p9}"

puts "JUST KIDDING.  I was told that was the case, but this test fails for me in both ruby1.8 and ruby1.9"
