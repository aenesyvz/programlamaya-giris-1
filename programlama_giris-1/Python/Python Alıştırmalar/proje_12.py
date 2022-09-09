def KaramelliSayilar(sayı1,sayı2):
  en_buyuk = sayı2
  en_kucuk = sayı1

  if sayı2 < sayı1:
    en_buyuk = sayı1
    en_kucuk = sayı2

  for i in range(en_kucuk,en_buyuk + 1):
    yüzler_bas = i // 100
    onlar_bas = ((i - (yüzler_bas * 100)) // 10)
    birler_bas = i - (yüzler_bas * 100 + onlar_bas * 10)
    
    try:
      if i % yüzler_bas == 0 and i % onlar_bas == 0 and i % birler_bas == 0:
        print(f"Karamelli Sayı: {i}")
    except ZeroDivisionError:
      next     

sayı1 = int(input("Sayı giriniz: "))
sayı2 = int(input("Sayı giriniz: "))

KaramelliSayilar(sayı1,sayı2)