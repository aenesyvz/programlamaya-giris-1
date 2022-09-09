# Hocam kendim yazmış olduğum kodun arkadaşlarımın yazdığı kodlarla bir benzerlik göstermemesi için bazı yerleri uzun yazdım. Saygılarımla.
cumleler = File.readlines("kelimeler.txt")

turkce = []
ingilizce = []

cumleler.each do |cumle|
  denklik = cumle.split(":")
  ingilizce << denklik[0].strip
  turkce <<  denklik[1].strip
end

cumle1 = []
cumle2 = []
cumle3 = []
cumle4 = []

hata_bildirimi = []
yanlis_cevaplar = []
sorular = []

while true
  print "Hangi dilde kelime bilgi seviyenizi olcmek istersiniz ?
1) Ingilizce – Turkce
2) Turkce – Ingilizce
Secim: "
  secim = gets.chomp.to_s

  if secim == "1" || secim == "2"
    break
  else
    puts "Lutfen '1' veya '2' tusuna basiniz."
  end
end

puan = 0

if secim == "1"
  (1..4).each do |sayi|
    while true
      a = rand(179)
      b = rand(179)
      c = rand(179)
      d = rand(179)
      dizi = [a, b, c, d].shuffle

#Aynı soruların tekrar sorulmaması ve şıkların aynı kelimeler olmaması içindir.
#Aynı anlamdaki Türkçe - İngilizce sözcükler var olduğundan şıklarda aynı anlama sahip kelimeler olmaması içindir.Saygılarımla.

      if a != b && a != c && a != d && b != c && b != d && c != d
        if turkce[dizi[0]] != turkce[dizi[1]] && turkce[dizi[0]] != turkce[dizi[2]] && turkce[dizi[0]] != turkce[dizi[3]] && turkce[dizi[1]] != turkce[dizi[2]] && turkce[dizi[1]] != turkce[dizi[3]] &&  turkce[dizi[2]] != turkce[dizi[3]]
          if sorular[0] != ingilizce[a] && sorular[1] != ingilizce[a] && sorular[2] != ingilizce[a] && sorular[3] != ingilizce[a]
            sorular << ingilizce[a]
            break
          end
        end
      end
    end

    puts "Soru #{sayi}.#{ingilizce[a]} kelimesinin Turkce anlami nedir ?
A) #{turkce[dizi[0]]}
B) #{turkce[dizi[1]]}
C) #{turkce[dizi[2]]}
D) #{turkce[dizi[3]]}"

    while true
      print "Cevap: "
      sık = gets.chomp.upcase

      if sık == "A" || sık == "B" || sık == "C" || sık == "D"
        break
      else
        puts "Lutfen siklardan birini seciniz."
      end
    end

    if sık == "A"
      if turkce[a] == turkce[dizi[0]]
        puan += 25
      else
        cumle1 = "#{sayi}. sorunun cevabi #{turkce[a]}"
        hata_bildirimi << cumle1
        yanlis_cevaplar << sayi
      end

    elsif sık == "B"
      if turkce[a] == turkce[dizi[1]]
        puan += 25
      else
        cumle2 = "#{sayi}. sorunun cevabi #{turkce[a]}"
        hata_bildirimi << cumle2
        yanlis_cevaplar << sayi
      end

    elsif sık == "C"
      if turkce[a] == turkce[dizi[2]]
        puan += 25
      else
        cumle3 = "#{sayi}. sorunun cevabi #{turkce[a]}"
        hata_bildirimi << cumle3
        yanlis_cevaplar << sayi
      end

    elsif sık == "D"
      if turkce[a] == turkce[dizi[3]]
        puan += 25
      else
        cumle4 = "#{sayi}. sorunun cevabi #{turkce[a]}"
        hata_bildirimi << cumle4
        yanlis_cevaplar << sayi
      end
    end
  end
end

if secim == "2"
  (1..4).each do |sayi|
    while true
      a = rand(179)
      b = rand(179)
      c = rand(179)
      d = rand(179)
      dizi = [a, b, c, d].shuffle

#Aynı soruların tekrar sorulmaması ve şıkların aynı kelime olmaması içindir.
#Aynı anlamdaki İngilizce - Türkçe sözcükler var olduğundan şıklarda aynı anlama sahip kelimeler olmaması içindir.Saygılarımla.

      if a != b && a != c && a != d && b != c && b != d && c != d
        if ingilizce[dizi[0]] != ingilizce[dizi[1]] && ingilizce[dizi[0]] != ingilizce[dizi[2]] && ingilizce[dizi[0]] != ingilizce[dizi[3]] && ingilizce[dizi[1]] != ingilizce[dizi[2]] && ingilizce[dizi[1]] != ingilizce[dizi[3]] &&  ingilizce[dizi[2]] != ingilizce[dizi[3]]
          if sorular[0] != turkce[a] && sorular[1] != turkce[a] && sorular[2] != turkce[a] && sorular[3] != turkce[a]
            sorular << turkce[a]
            break
          end
        end
      end
    end

    puts "Soru #{sayi}.#{turkce[a]} kelimesinin Ingilizce anlami nedir ?
A) #{ingilizce[dizi[0]]}
B) #{ingilizce[dizi[1]]}
C) #{ingilizce[dizi[2]]}
D) #{ingilizce[dizi[3]]}"

    while true
    print "Cevap: "
    sık = gets.chomp.upcase

      if sık == "A" || sık == "B" || sık == "C" || sık == "D"
        break
      else
        puts "Lutfen siklardan birini seciniz."
      end
    end

    if sık == "A"
      if ingilizce[a] == ingilizce[dizi[0]]
        puan += 25
      else
        cumle1 = "#{sayi}. sorunun cevabi #{ingilizce[a]}"
        hata_bildirimi << cumle1
        yanlis_cevaplar << sayi
      end

    elsif sık == "B"
      if ingilizce[a] == ingilizce[dizi[1]]
        puan += 25
      else
        cumle2 = "#{sayi}. sorunun cevabi #{ingilizce[a]}"
        hata_bildirimi << cumle2
        yanlis_cevaplar << sayi
      end

    elsif sık == "C"
      if ingilizce[a] == ingilizce[dizi[2]]
        puan += 25
      else
        cumle3 = "#{sayi}. sorunun cevabi #{ingilizce[a]}"
        hata_bildirimi << cumle3
        yanlis_cevaplar << sayi
      end

    elsif sık == "D"
      if ingilizce[a] == ingilizce[dizi[3]]
        puan += 25
      else
        cumle4 = "#{sayi}. sorunun cevabi #{ingilizce[a]}"
        hata_bildirimi << cumle4
        yanlis_cevaplar << sayi
      end
    end
  end
end

puts "Sonuc: Test sonucundan #{puan} puan aldiniz."

if puan != 100
  puts "Yanlis yapilan sorular: #{yanlis_cevaplar}"
  puts "Yanlis yapilan sorularin cevaplari:"
  puts hata_bildirimi
end
