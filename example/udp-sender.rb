require 'UV'
c = UV::UDP.new()
c.send("helloworld", UV::ip4_addr('127.0.0.1', 8888)) {|x|
  c.close()
}
UV::run()
