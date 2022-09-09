def SeriHesaplama(sayı):
  sonuc = 0

  for i in range(1,sayı + 1):
    sonuc += (1 / i * (((sayı - 1) / sayı) ** sayı))

  return sonuc
  
sayı = int(input("Sayı giriniz: "))
print(SeriHesaplama(sayı))