def TekMiCiftMi(*a):
  tek = list()
  cift = list()

  for i in dizi:
    if i % 2 == 0:
      cift.append(i)
    else:
      tek.append(i)

  print(sum(tek))
  print(sum(cift))



dizi = [1,2,3,45,62,7,54,3,2]

TekMiCiftMi(dizi)