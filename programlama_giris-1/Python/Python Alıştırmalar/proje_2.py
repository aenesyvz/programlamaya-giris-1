sayı = int(input("Sayı giriniz: "))
faktoriyel = 1

for i in range(1,sayı+1):
  faktoriyel *= i
  
print(faktoriyel)