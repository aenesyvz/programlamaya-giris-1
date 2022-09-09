tarife = [[25,20,17],[15,12,10],[12,10,7]]
ucret = 0

def Ucret(): 
  while True:
    secım = input("""Aşağıdaki kodlardan birini girin
=> Yabancı : 1
=> TC vatandaşı : 2
=> Üniversite : 3
Kod giriniz: """)

    if secım == "1" or secım == "2" or secım == "3":
      gun_sayısı = int(input("Kaç gün kalacaksınız: "))
      break
    else:
      print("Hatalı kod")

  if secım == "1":
    if gun_sayısı <= 4:
      ucret = gun_sayısı * tarife[0][0]
    elif gun_sayısı <= 10:
      ucret = gun_sayısı * tarife[0][1]
    else:
      ucret = gun_sayısı * tarife[0][2]

  elif secım == "2":
    if gun_sayısı <= 4:
      ucret = gun_sayısı * tarife[1][0]
    elif gun_sayısı <= 10:
      ucret = gun_sayısı * tarife[1][1]
    else:
      ucret = gun_sayısı * tarife[1][2]

  else:
    if gun_sayısı <= 4:
      ucret = gun_sayısı * tarife[2][0]
    elif gun_sayısı <= 10:
      ucret = gun_sayısı * tarife[2][1]
    else:
      ucret = gun_sayısı * tarife[2][2]

  return f"Ödemeniz gereken ücret {ucret}"

print(Ucret())





  
