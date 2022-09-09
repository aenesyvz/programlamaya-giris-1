def AylıkMaas(kriter,satıs_miktarı,ek_mesai):
  maas = 0
  maas += satıs_miktarı * 0.05
  maas += ek_mesai * 50
  
  if kriter == "1":
    maas += 896
  elif kriter == "2":
    maas += 1010
  else:
    maas += 960
    
  return f"Almanız gereken maaş {maas} TL"

while True:
  kriter = input("""Size uygun kriteri seçiniz
=> 20 yaş altı : 1
=> 20 yaş üstü : 2
=> emekli : 3 
Kod: """)

  if kriter == "1" or kriter == "2" or kriter == "3":
    satıs_miktarı = float(input("Yapmış olduğunuz satış miktarlarının toplamını giriniz: "))
    ek_mesai = int(input("Ek mesai yaptığınız gün sayısını giriniz: "))
    break
  else:
    print("Lütfen geçerli bir kod giriniz...")

print(AylıkMaas(kriter,satıs_miktarı,ek_mesai))