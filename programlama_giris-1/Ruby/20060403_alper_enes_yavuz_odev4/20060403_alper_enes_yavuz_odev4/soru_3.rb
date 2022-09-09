renault = 0
mazda = 0
honda = 0
ford = 0

i_r = 0
i_m = 0
i_h = 0
i_f = 0

puts "Programin kodlari asagıda verilmistir.
=> Renault markasi icin 1 kodunu giriniz.
=> Mazda markasi icin 2 kodunu giriniz.
=> Honda markasi icin 3 kodunu giriniz.
=> Ford markasi icin 4 kodunu giriniz.
=> Programdan cikmak icin 111 kodunu giriniz."

while true
    print "Marka, tutar giriniz: "
    bilgi = gets.chomp.split

    if bilgi[0] == "1"
        renault += bilgi[1].to_f
        i_r += 1   
    elsif bilgi[0] == "2"
        mazda += bilgi[1].to_f
        i_m += 1   
    elsif bilgi[0] == "3"
        honda += bilgi[1].to_f
        i_h += 1  
    elsif bilgi[0] == "4"
        ford += bilgi[1].to_f
        i_f += 1   
    elsif bilgi[0] == "111"
        puts "PROGRAM SONLANDIRILDI."
        break
    else 
        puts "HATALI KOD GIRDINIZ."
    end
end

sayi = [i_r, i_m, i_h, i_f]
satis = [renault, mazda, honda, ford]

puts "OZET BILGILER"

if i_r > i_m && i_r > i_h && i_r > i_f
    puts "En cok gelen marka Renault (#{sayi.max} kez)"
elsif i_m > i_r && i_m > i_h && i_m > i_f
    puts "En cok gelen marka Mazda (#{sayi.max} kez)"
elsif i_h > i_r && i_h > i_m && i_h > i_f
    puts "En cok gelen marka Honda (#{sayi.max} kez)"
elsif i_f > i_r && i_f > i_m && i_f > i_h
    puts "En cok gelen marka Ford (#{sayi.max} kez)"
elsif i_r == i_m && i_r > i_h && i_r > i_f
    puts "En cok gelen markalar Renault ve Mazda (#{sayi.max} kez)"
elsif i_r == i_h && i_r > i_m && i_r > i_f
    puts "En cok gelen markalar Renault ve Honda (#{sayi.max} kez)"
elsif i_r == i_f && i_r > i_m && i_r > i_h
    puts "En cok gelen markalar Renault ve Ford (#{sayi.max} kez)"
elsif i_m == i_h && i_m > i_r && i_m > i_f
    puts "En cok gelen markalar Mazda ve Honda (#{sayi.max} kez)"
elsif i_m == i_f && i_m > i_r && i_m > i_h
    puts "En cok gelen markalar Mazda ve Ford (#{sayi.max} kez)"
elsif i_h == i_f && i_h > i_r && i_h > i_m
    puts "En cok gelen markalar Honda ve Ford (#{sayi.max} kez)"
elsif i_r == i_m && i_r == i_h && i_r > i_f
    puts "En cok gelen markalar Renault, Mazda ve Honda (#{sayi.max} kez)"
elsif i_r == i_m && i_r == i_f && i_r > i_h
    puts "En cok gelen markalar Renault, Mazda ve Ford (#{sayi.max} kez)"
elsif i_r == i_h && i_r == i_f && i_r > i_m
    puts "En cok gelen markalar Renault, Honda ve Ford (#{sayi.max} kez)"
elsif i_m == i_h && i_m == i_f && i_m > i_r 
    puts "En cok gelen markalar Mazda, Honda ve Ford (#{sayi.max} kez)"
else 
    puts "En cok gelen markalar Renault, Mazda, Honda ve Ford (#{sayi.max} kez)"  
end 

if renault > mazda && renault > honda && renault > ford
    puts "En cok satis yapilan marka Renault (#{satis.max} TL)"
elsif mazda > renault && mazda > honda && mazda > ford
    puts "En cok satis yapilan marka Mazda (#{satis.max} TL)"
elsif honda > renault && honda > mazda && honda > ford
    puts "En cok satis yapilan marka Honda (#{satis.max} TL)"
elsif ford > renault && ford > mazda && ford > honda
    puts "En cok satis yapilan marka Ford (#{satis.max} TL)"
elsif renault == mazda && renault > honda && renault > ford 
    puts "En cok satis yapilan markalar Renault ve Mazda (#{satis.max} TL)"
elsif renault == honda && renault > mazda && renault > ford
    puts "En cok satis yapilan markalar Renault ve Honda (#{satis.max} TL)"
elsif renault == ford && renault > mazda && renault > honda
    puts "En cok satis yapilan markalar Renault ve Ford (#{satis.max} TL)"
elsif mazda == honda && mazda > renault && mazda > ford
    puts "En cok satis yapilan markalar Mazda ve Honda (#{satis.max} TL)"
elsif mazda == ford && mazda > renault && mazda > honda
    puts "En cok satis yapilan markalar Mazda ve Ford (#{satis.max} TL)"
elsif honda == ford && honda > renault && honda > mazda
    puts "En cok satis yapilan markalar Honda ve Ford (#{satis.max} TL)"
elsif renault == mazda && renault == honda && renault > ford
    puts "En cok satis yapilan markalar Renault, Mazda ve Honda (#{satis.max} TL)"
elsif renault == mazda && renault == ford && renault > honda
    puts "En cok satis yapilan markalar Renault, Mazda ve Ford (#{satis.max} TL)"
elsif renault == honda && renault == ford && renault > mazda
    puts "En cok satis yapilan markalar Renault, Honda ve Ford (#{satis.max} TL)"
elsif mazda == honda && mazda == ford && mazda > renault
    puts "En cok satis yapilan markalar Mazda, Honda ve Ford (#{satis.max} TL)"
else 
    puts "En cok satis yapilan markalar Renault, Mazda, Honda ve Ford (#{satis.max} TL)"
end