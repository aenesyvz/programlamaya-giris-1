def HayatımGibiBos():
  sayılar = list()

  for i in range(1,1001):
    sayı = str(i)
    basamak = len(sayı)
    toplam = 0
    carpim = 1

    for j in range(basamak):
      toplam += int(sayı[j])
      carpim *= int(sayı[j])
      
    if toplam == carpim:
      sayılar.append(int(sayı))

  print(sayılar)

HayatımGibiBos()


