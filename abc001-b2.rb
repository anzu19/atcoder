l1 = gets
m = l1.to_i
vv = case
when m < 100                  then 0
when m <= 5000                then m / 100
when m >= 6000 && m <= 30000  then  m / 1000 + 50
when m >= 35000 && m <= 70000 then (m / 1000 - 30) / 5 + 80
when m > 70000                then 89
else                               -1
end

printf "%02d\n", vv
