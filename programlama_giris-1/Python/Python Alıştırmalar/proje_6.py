def EnBuyukBulma(*a):
  en_buyuk = dizi[1]

  for i in dizi:
    if en_buyuk < i:
      en_buyuk = i

  return en_buyuk

dizi = [1,2,3,4,5,675839495945,784,3,6,2,120584,6]
print(EnBuyukBulma(dizi))