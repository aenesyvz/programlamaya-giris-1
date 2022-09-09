puts("İlk aralığı giriniz:")
sayi_1 = gets.chomp.to_i
puts("İkinci aralığı giriniz:")
sayi_2 = gets.chomp.to_i

abc = sayi_1
karamel_sayılar = []

while (1) #Sonsuz Döngü -  bu döngü farklı şekillerde de yazılabilir farklı şeyler deneyin mutlaka
    
    if (abc > sayi_2)
    	break
    end

    #Sayıları basamaklarına ayırma - bu işlemde farklı şekillerde yapılabilir bu bir tanesi
    a = (abc / 100).to_i
    b = ((abc % 100)/10).to_i
    c = ((abc % 100)%10).to_i
    
    if (a == 0 or b == 0 or c == 0)
        abc = abc + 1
        next
    end
    
    if (abc % a == 0 and abc % b == 0 and abc % c == 0)
        karamel_sayılar << abc
    end
    
    abc = abc + 1
    
end

puts("**************Karamel Sayılar***************")
puts(karamel_sayılar)