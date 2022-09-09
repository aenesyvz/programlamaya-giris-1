print "Dört Basamakli Sayinin İlk Rakamini Giriniz: "
a = gets.chomp.to_s
print "Dört Basamakli Sayinin İkinci Rakamini Giriniz: "
b = gets.chomp.to_s
print "Dört Basamakli Sayinin Ucuncu Rakamini Giriniz: "
c = gets.chomp.to_s
print "Dört Basamakli Sayinin Dorduncu Rakamini Giriniz: "
d = gets.chomp.to_s
puts "." * 20
ab = (a + b).to_i
cd = (c + d).to_i
abcd = (a + b + c + d).to_i
if (abcd) == ((ab + cd) ** 2)
  puts "Girilen sayı #{abcd}, ikiye ayrılmıs durumda #{ab} ve #{cd}, #{ab + cd} ^ 2 = #{(ab + cd) ** 2} olmaktadır. Sayi Köksal Sayidir."
else
  puts "Girilen sayı #{abcd}, ikiye ayrılmıs durumda #{ab} ve #{cd}, #{ab + cd} ^ 2 = #{(ab + cd) ** 2} olmaktadır. Sayi Köksal Sayi degildir."
end