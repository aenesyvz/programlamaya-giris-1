def EbobVeEkokBulma(sayı1,sayı2):
  ebob = 1
  ilk = list()
  ikinci = list()

  for i in range(2,sayı1):
    if sayı1 % i == 0:
      ilk.append(i)

  for j in range(2,sayı2):
    if sayı2 % j == 0:
      ikinci.append(j)

  for x in ilk:
    for y in ikinci:
      if x == y:
        ebob = x
       
  carpım = sayı1 * sayı2
  bolum = 1

  for q in range(2,sayı1 + 1):
    if sayı1 % q ==  0 and sayı2 % q == 0:
      bolum = q

  ekok = carpım / bolum

  print(f"EBOB({sayı1},{sayı2}) = {ebob}")
  print(f"EKOK({sayı1},{sayı2}) = {ekok}")
  
sayı1 = int(input("Sayı giriniz: "))
sayı2 = int(input("Sayı giriniz: "))

EbobVeEkokBulma(sayı1,sayı2)