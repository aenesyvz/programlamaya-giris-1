puts "A, B ve C kumesi olusturmak icin elemanlari yan yana bosluk birakarak yaziniz ve ardindan 'ENTER' tusuna basiniz."

print 'A kumesi icin 5 eleman giriniz: '
a_kumesi = gets.chomp.split
a_kumesi = a_kumesi[0].to_i, a_kumesi[1].to_i, a_kumesi[2].to_i, a_kumesi[3].to_i, a_kumesi[4].to_i

print 'B kumesi icin 5 eleman giriniz: '
b_kumesi = gets.chomp.split
b_kumesi = b_kumesi[0].to_i, b_kumesi[1].to_i, b_kumesi[2].to_i, b_kumesi[3].to_i, b_kumesi[4].to_i

print 'C kumesi icin 5 eleman giriniz: '
c_kumesi = gets.chomp.split
c_kumesi = c_kumesi[0].to_i, c_kumesi[1].to_i, c_kumesi[2].to_i, c_kumesi[3].to_i, c_kumesi[4].to_i

birlesim = a_kumesi | b_kumesi | c_kumesi

puts "A kumesinin elemanlari = #{a_kumesi.sort.reverse}"
puts "B kumesinin elemanlari = #{b_kumesi.sort.reverse}"
puts "C kumesinin elemanlari = #{c_kumesi.sort.reverse}"
puts "A, B ve C kumesinin elemanlarinden olusan birlesim kumesinin elemanlari = #{birlesim.sort.reverse}"
