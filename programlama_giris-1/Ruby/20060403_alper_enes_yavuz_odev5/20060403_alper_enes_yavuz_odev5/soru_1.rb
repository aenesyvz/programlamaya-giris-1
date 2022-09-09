#Hocam uzun kod yazmamın nedeni arkadaşlarımın yazdığı kodlarla benzerlik göstermemesi içindir.Saygılarımla.
print "Asagidaki islem turlerinden birini seciniz
=> Orijinal metni sifrelemek icin '1' tusuna basiniz (metin.txt dosyasina yazi yazilmalidir.)
=> Sifreli metni orijinal metine cevirmek icin '2' tusuna basiniz (sifreli_metin.txt dosyasina yazi yazilmalidir.)
Islem: "
islem = gets.chomp.to_i

if islem == 1
  plain = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z",
  "a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",
  " ",",",".",'"',")","(","0","1","2","4","5","7","9","-","/","'"] 

  print "Metindeki harfler kac sira otelenerek sifrelenecektir: "
  anahtar = gets.chomp.to_i

  metin = File.read("metin.txt") 
  sifre_yazi = ""

  def sifreleme(metin, plain, sifre_yazi, anahtar)
    (0..metin.size).each do |i|
      plain.each_with_index do |harf,x|
        if metin[i] == plain[x] && x < 26
          sifre = (x + anahtar) % 26
          sifre_yazi += plain[sifre].to_s
          next
        end
        if metin[i] == plain[x] && x < 52
          sifre = (x + anahtar) % 26
          sifre += 26
          sifre_yazi += plain[sifre].to_s
        end
        if metin[i] == plain[x] && x > 51
          sifre_yazi += plain[x].to_s
        end
      end
    end
    File.open("sifreli_yazi.txt", "w+") do |sifrelenmis_metin|
      sifrelenmis_metin.write sifre_yazi
    end
  end

  sifreleme(metin, plain, sifre_yazi, anahtar)

  plain = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]

  sifreli = File.read("sifreli_yazi.txt")
  orijinal_yazi = ""
  anahtar %= 26

  def orijinal1(sifreli, plain, orijinal_yazi, anahtar)
    (0..sifreli.size).each do |i|
      plain.each_with_index do |harf,x|
        a = sifreli[i]
        if a == plain[x]
          orijinal = (x - anahtar) % 26
          orijinal_yazi += plain[orijinal]
          break
        end
        if a == plain[x].downcase
          orijinal = (x - anahtar) % 26
          orijinal_yazi += plain[orijinal].downcase
          break
        end
        if a == " " || a == "," || a == "." || a == '"' || a == ")" || a == "(" || a == "0" || a == "1" || a =="2"|| a == "7"|| a == "9"|| a == "-"|| a == "/"|| a == "'" || a == "5" || a == "4"
          orijinal_yazi += a.to_s
          break
        end
      end
    end
    File.open("orijinal_metin.txt", "w+") do |orijinal_hal|
      orijinal_hal.puts orijinal_yazi
    end
  end

  orijinal1(sifreli, plain, orijinal_yazi, anahtar)

  print "Asagıdaki islem turlerinden birini seciniz
=> Sifreli metni gormek icin '1' tusuna basiniz
=> Orijinal metni gormek icin '2' tusuna basiniz
=> Sifreli metni ve orijinal metni gormek icin '3' tusuna basiniz
=> Cıkıs yapmak icin herhangi bir tusa basiniz
Secim: "
  secim = gets.chomp.to_i

  if secim == 1
    a = File.read("sifreli_yazi.txt")
    puts a
  elsif secim == 2
    b = File.read("orijinal_metin.txt")
    puts b
  elsif secim == 3
    b = File.read("orijinal_metin.txt")
    puts b
    puts "*****************************************************"
    a = File.read("sifreli_yazi.txt")
    puts a
  else
    puts "Cikis yaptiniz."
  end
end

if islem == 2
  print "Metindeki harfler kac sira otelenerek cozulecektir: "
  anahtar = gets.chomp.to_i

  plain = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]

  metin = File.read("sifreli_metin.txt") 
  orijinal_metin = ""
  anahtar %= 26

  def cozum(metin, plain, orijinal_metin, anahtar)
    (0..metin.size).each do |i|
      plain.each_with_index do |harf,x|
        a = metin[i] 
        if a == plain[x]
          orijinal = (x - anahtar) % 26
          orijinal_metin += plain[orijinal]
          break
        end
        if a == plain[x].downcase
          orijinal = (x - anahtar) % 26
          orijinal_metin += plain[orijinal].downcase
          break
        end
        if a == " " || a == "," || a == "." || a == '"' || a == ")" || a == "(" || a == "0" || a == "1" || a =="2"|| a == "7"|| a == "9"|| a == "-"|| a == "/"|| a == "'" || a == "5" || a == "4"
          orijinal_metin += a.to_s
          break
        end 
      end
    end 
    File.open("orijinal_yazi.txt", "w+") do |orijinal|
      orijinal.puts orijinal_metin
    end
  end

  cozum(metin, plain, orijinal_metin, anahtar)

  print "Asagıdaki islem turlerinden birini seciniz
=> Sifreli metni gormek icin '1' tusuna basiniz
=> Orijinal metni gormek icin '2' tusuna basiniz
=> Sifreli metni ve orijinal metni gormek icin '3' tusuna basiniz
=> Cıkıs yapmak icin herhangi bir tusa basiniz
Secim: "
  secim = gets.chomp.to_i

  if secim == 1
    a = File.read("sifreli_metin.txt")
    puts a
  elsif secim == 2
    b = File.read("orijinal_yazi.txt")
    puts b
  elsif secim == 3
    b = File.read("orijinal_yazi.txt")
    puts b
    puts "*****************************************************"
    a = File.read("sifreli_metin.txt")
    puts a
  else
    puts "Cikis yaptiniz."
  end
end