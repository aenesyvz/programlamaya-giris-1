import math

def KokBulma(a,b,c):
  diskriminat = b ** 2 - (4*a*c)
  
  if diskriminat < 0:
    ılkKok = "Kök Yok"
    ıkıncıKok = "Kök Yok"
  else:
    ılkKok = (- b + math.sqrt(diskriminat)) / 2 * a
    ıkıncıKok = (- b - math.sqrt(diskriminat)) / 2 * a

  print(f"Birinci kök: {ılkKok}")
  print(f"İkinci kök: {ıkıncıKok}")

print("""Denklem çözücü uygulamamıza hoş geldiniz!
Sizden üç sayı girmeni bekliyoruz;
İlk sayı => a
İkinci => b
Üçüncü => c""")

a = int(input("a değerini giriniz: "))
b = int(input("b değerini giriniz: "))
c = int(input("c değerini giriniz: "))


KokBulma(a,b,c)