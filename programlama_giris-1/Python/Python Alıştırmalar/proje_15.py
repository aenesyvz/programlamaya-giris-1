print("""Elektrik dağıtım şirketinde elektrik kullanım bedeli
=> Konutlar: 0-100 KWh arası 0.1 TL/KWh,100 KWh'dan fazla kısmı için 0.15 TL/KWh
=> Kamu kurluşları: 0-500 KWh arası için 0.15TL/KWh,500KWh'dan fazla kısmı için 0.2TL/KWh
=> Özel sektör: 0-1000 KWh arası 0.3TL/KWh,1000 KWh'dan fazla kısmı için 0.35TL/KWh""")
secim = input("Konutlar için '1'\nKamu kuruluşları için '2'\nÖzel sektör için '3' tuşuna basınız: ")

fatura = 0

def Konutlar(kwh):
  if kwh <= 100:
    fatura = kwh * 0.1 
  else:
    fatura = kwh * 0.1 + ((kwh - 100) * 0.15)
  
  return f"Bu ay: {fatura} TL"
  
def KamuKurulusları(kwh):
  if kwh <= 500:
    fatura = kwh * 0.15
  else:
    fatura = kwh * 0.15 +((kwh - 500) * 0.2)

  return f"Bu ay: {fatura} TL"

def OzelSektor(kwh):
  if kwh <= 1000:
    fatura = kwh * 0.3
  else:
    fatura = kwh * 0.3 + ((kwh - 1000) * 0.35)

  return f"Bu ay: {fatura} TL"

kwh = float(input("Kullandığınız elektriği KWh cinsinden yazınız: ")) 

if secim == "1":
  print(Konutlar(kwh))
elif secim == "2":
  print(KamuKurulusları(kwh))
else:
  print(OzelSektor(kwh))