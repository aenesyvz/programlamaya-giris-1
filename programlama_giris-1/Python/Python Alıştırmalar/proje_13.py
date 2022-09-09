def SeriBulma(n,x):
  total = 1

  for i in range(1,n + 1):
    if i % 2 == 0:
      total += (x ** i) / i
    else:
      total -= (x ** i) / i

  return total

n = int(input("n değerini giriniz: "))
x = int(input("x değerini giriniz: "))

print(SeriBulma(n,x))