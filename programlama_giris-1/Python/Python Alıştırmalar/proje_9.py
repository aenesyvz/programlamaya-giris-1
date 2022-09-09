def MukemmelSayı():
  mukemmel = list()
  
  for x in range(1,1001):
    total = 0
    for y in range(1,x):
      if x % y == 0:
        total += y

    if x == total:
      mukemmel.append(x)

  return mukemmel

print(MukemmelSayı())