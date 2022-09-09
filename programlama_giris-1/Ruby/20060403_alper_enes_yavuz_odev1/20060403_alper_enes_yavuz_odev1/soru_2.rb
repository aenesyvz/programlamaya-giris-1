print "Ilk dogru icin bilgileri giriniz : "
a1 = gets.chomp.to_i
b1 = gets.chomp.to_i
c1 = gets.chomp.to_i
puts "Ilk dogruya ait bilgiler a1 = #{a1} b1 = #{b1} c1 = #{c1}"
a2 = a1
b2 = b1
print "Ikinci dogru icin c2 bilgisi giriniz : "
c2 = gets.chomp.to_i
puts "Ikinci dogruya ait bilgiler a2 = #{a2} b2 = #{b2} c2 = #{c2}"
formül = (((c1 - c2).abs) / (((a1 ** 2) + (b1 ** 2)) ** 0.5))
puts "Iki dogru arasindaki uzaklik = #{formül}"

