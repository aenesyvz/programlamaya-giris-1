def KareAlanı(n,a):
  toplam = 0

  for i in range(n):
    toplam += a * a
    a = a / 2

  return toplam

n = int(input("Kare sayısını giriniz: "))
a = int(input("Kenar uzunluğunu giriniz: "))

print(KareAlanı(n,a))