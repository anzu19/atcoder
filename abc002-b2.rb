l1 = gets
w = l1.chomp
w = w.gsub(/a/, "").gsub(/i/, "").gsub(/u/, "").gsub(/e/, "").gsub(/o/, "")
puts "#{w}"
