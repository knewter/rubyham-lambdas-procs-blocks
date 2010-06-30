proc1 = Proc.new { puts "Hey, Proc.new made me." }
proc2 = proc { puts "Kernel.proc made me" }
proc3 = lambda { puts "lambda made me" }

def proc_four_example
  puts "hey from inside the method!"
  yield
end

proc1.call
proc2.call
proc3.call
proc_four_example { puts "and hey from the implicit proc" }
