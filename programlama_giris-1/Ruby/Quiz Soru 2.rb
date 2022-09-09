print "x degerini giriniz: "
x = gets.chomp.to_i
print "n degerini giriniz: "
n = gets.chomp.to_i
t = 1
s = 0


(1..n).each do |e|
    s = (x ** e).to_f / e 
    if e % 2 == 0
        t = t + s
    else
        t = t - s
    end
end
puts "serinin sonucu = #{t}"