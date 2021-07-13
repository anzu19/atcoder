l1 = gets
m = l1.to_i
vv = if m < 100
       0
     elsif m <= 5000
       m / 100
     elsif m >= 6000 && m <= 30000
       m / 1000 + 50
     elsif m >= 35000 && m <= 70000
       (m / 1000 - 30) / 5 + 80
     elsif m > 70000
       89
     else
       -1
     end

printf "%02d\n", vv
