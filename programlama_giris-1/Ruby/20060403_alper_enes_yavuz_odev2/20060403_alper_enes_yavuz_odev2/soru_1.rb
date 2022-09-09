print "Ara Sinav Puanini Giriniz: "
ara_sinav = gets.chomp.to_i
print "Quiz Puanini Giriniz: "
quiz = gets.chomp.to_i
print "Devamlilik Puanini Giriniz: "
devamlilik = gets.chomp.to_i
print "Final Puanini Giriniz: "
final = gets.chomp.to_i
puts "." * 20
ortalama = ((ara_sinav * 0.3) + (quiz * 0.1) + (devamlilik * 0.1) + (final * 0.5)).to_f
if (90 <= ortalama) && (100 >= ortalama)
  puts "Ortalamaniz #{ortalama} notunuz A'dir."
elsif (80 <= ortalama) && (90 > ortalama)
  puts "Ortalamaniz #{ortalama} notunuz B'dir."
elsif (70 <= ortalama) && (80 > ortalama)
  puts "Ortalamaniz #{ortalama} notunuz C'dir."
elsif (60 <= ortalama) && (70 > ortalama)
  puts "Ortalamaniz #{ortalama} notunuz D'dir."
else
  puts "Ortalamaniz #{ortalama} notunuz F'dir."
end
