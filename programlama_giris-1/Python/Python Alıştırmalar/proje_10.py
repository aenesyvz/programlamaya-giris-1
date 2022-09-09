def SeriBulma(sayi):
  seriSonucu = 0

  for i in range(1, sayi + 1):
    seriSonucu += i * (sayi ** (i - 1))

  return seriSonucu

sayi = int(input("Sayı giriniz: "))
print(SeriBulma(sayi))