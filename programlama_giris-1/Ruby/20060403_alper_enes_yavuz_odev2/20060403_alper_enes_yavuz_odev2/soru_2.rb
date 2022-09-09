print "Yasinizi Giriniz: "
yas = gets.chomp.to_i
print "Kilonuzu Giriniz (kg): "
kilo = gets.chomp.to_f
print "Boyunuzu Giriniz (m): "
boy = gets.chomp.to_f
puts "." * 20
vki = (kilo / (boy) ** 2)
if (13 <= yas) && (yas <= 17) && (18.50 <= vki) && (vki <= 24.99)
  puts "Vucut kitle indeksiniz #{vki} ve askeri lise icin uygunsunuz."
else
  puts "Vucut kitle indeksiniz #{vki} ve askeri lise icin uygun değilsiniz."
end