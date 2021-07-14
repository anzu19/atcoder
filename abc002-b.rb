l1 = gets
w = l1.chomp
w = w.gsub(/a/, "")
w = w.gsub(/i/, "")
w = w.gsub(/u/, "")
w = w.gsub(/e/, "")
w = w.gsub(/o/, "")
puts "#{w}"