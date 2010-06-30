proc1 = Proc.new{|x| puts "James has an unhealthy love for #{x}." }
proc2 = Proc.new{|x| puts "Consequently, we no longer allow #{x} in our offices." }
proc3 = Proc.new{|x| puts "Please, if you've brought any #{x}, do not inform James." }
procs = [proc1, proc2, proc3]

awkward_love_recipients = ["Ponies", "Sheep", "Venezuelans", "Predobear statuettes"]

awkward_love_recipients.each{|r| procs.each{|p| p.call(r) } }
