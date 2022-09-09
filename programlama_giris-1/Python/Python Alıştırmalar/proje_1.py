import math

sayı = float(input("Sayı giriniz: "))
sonuc = 0

if sayı <= 0:
  print(f"Sonuç: {sonuc}")
elif sayı <= 10:
  sonuc = 3 / math.sqrt(sayı **3 + 1)
  print(f"Sonuç: {sonuc}")
else:
  sonuc = math.cos(sayı) + 2 * sayı ** 2
  print(f"Sonuc: {sonuc}")