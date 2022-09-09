puts "A ve B dizisi olusturmak icin elemanlari yan yana bosluk bırakarak yaziniz ve ardindan 'ENTER' tusuna basiniz."

print 'A dizisi icin 5 eleman giriniz: '
a_dizisi = gets.chomp.split
a_dizisi = a_dizisi[0].to_i, a_dizisi[1].to_i, a_dizisi[2].to_i, a_dizisi[3].to_i, a_dizisi[4].to_i

print 'B kumesi icin 5 eleman giriniz: '
b_dizisi = gets.chomp.split
b_dizisi = b_dizisi[0].to_i, b_dizisi[1].to_i, b_dizisi[2].to_i, b_dizisi[3].to_i, b_dizisi[4].to_i

print 'Asagidaki islem bilgilerine gore islem seciniz.
0- Programdan cikar.
1- 10 elemanli yeni bir C dizisi olusturur.
2- Iki dizinin en buyuk elemanlarini bularak yeni bir D dizisi olusturur.
3- C dizisini karistirip sonuna 55 sayisini ekleyip ekrana yazdirir ve olusan bu dizinin ortanca elemanini ekrana yazdirir.
4- D dizisinin basina 100, 200, ve 300 sayilarini sirasiyla ekler ve bu yeni diziyi ekrana bastirir.
Istediginiz islem icin sayi giriniz (0/1/2/3/4): '
aciklama = gets.chomp.to_i

c_dizisi = (a_dizisi | b_dizisi) + (a_dizisi & b_dizisi)
d_dizisi = [a_dizisi.max, b_dizisi.max]

if aciklama == 1
  puts "C dizisi = #{c_dizisi}"
elsif aciklama == 2
  puts "D dizisi = #{d_dizisi}"
elsif aciklama == 3
  c_dizisi = c_dizisi.shuffle.append 55
  puts "C dizisi = #{c_dizisi}"
  puts "C dizisinin ortanca elemani = #{c_dizisi[5]}"
elsif aciklama == 4
  ek = [100, 200, 300]
  d_dizisi = ek + d_dizisi
  puts "D dizisi = #{d_dizisi}"
else
  puts 'Programdan ciktiniz.'
end