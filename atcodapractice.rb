l1 = gets
l2 = gets
l3 = gets
a = l1.chomp.to_i
l2 = l2.chomp.split
b = l2[0].to_i
c = l2[1].to_i
t = a + b + c
print "#{t} #{l3}"