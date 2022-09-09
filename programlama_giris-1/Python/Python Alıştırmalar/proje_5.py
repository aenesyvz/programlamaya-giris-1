def ArmStrongSayılar(sayı):
  us = len(sayı)
  total = 0

  for i in range(us):
    rakam = int(sayı[i])
    total += rakam ** us
  
  if int(sayı) == total:
    print(f"{sayı} sayısı ArmStrong sayısıdır.")
  else:
    print(f"{sayı} sayısı ArmStrong sayısı değildir.")



sayı = input("Sayı giriniz: ")
ArmStrongSayılar(sayı)