def KargoParası(kod,gram):
  tarife = [[2,1.5],[1,0.75],[3,2]]
  fatura = 0

  if kod == "1":
      fatura += tarife[0][0] + (tarife[0][1] * (gram // 250))
  elif kod == "2":
      fatura += tarife[1][0] + (tarife[1][1] * (gram // 250))
  else:
      fatura += tarife[2][0] + (tarife[2][1] * (gram // 250))

  return f"Ödenmesi gereken ücret: {fatura} TL"


kod = input("""Kargonuz nereye gönderilecek
=> Amerika : 1
=> Avrupa : 2
=> Uzakdoğu : 3
Kod: """)
gram = float(input("Kargonuzun kaç gram: "))

print(KargoParası(kod,gram))