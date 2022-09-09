# class Futbolcu():
#     def __init__(self,ad,soyad,uyruk,mevki):
#         self.ad = ad
#         self.soyad = soyad
#         self.uyruk = uyruk
#         self.mevki = mevki

#         print("Futbolcu init fonksiyonu.......")

#     def BilgileriGoster(self):
#         print(f"""------------------------
# Ad: {self.ad}
# Soyad: {self.soyad}
# Uyruk: {self.uyruk}
# Mevki: {self.mevki}""")

#     def MevkiEkle(self,yeni_mevki):
#         self.mevki.append(yeni_mevki)

# # class TeknikHeyet(Futbolcu):
# #     def __init__(self,görevi):
# #         super().__init__(ad,soyad,uyruk)
# #         self.görevi = görevi

# #     def BilgileriGoster(self):
# #         print(f"""------------------------
# # Ad: {self.ad}
# # Soyad: {self.soyad}
# # Uyruk: {self.uyruk}
# # Görevi: {self.görevi}""")


# futbolcu1 = Futbolcu("Alper Enes","Yavuz","Türkiye",["Orta saha"])
# futbolcu1.BilgileriGoster()
# futbolcu1.MevkiEkle("kanat")
# futbolcu1.BilgileriGoster()

# # teknikHeyet1 = TeknikHeyet("Fatih","Terim","Türkiye","Teknik Direktör")
# # teknikHeyet1.BilgileriGoster()


def EkokVeEbobBulma(a,b):
    enbüyük = a
    enküçük = b

    if enbüyük < b:
        enbüyük = b
        enküçük = a

    carpım = enbüyük * enküçük
    ebob = 1

    for i in range(2,enküçük + 1):
        if enbüyük % i == 0 and enküçük % i == 0:
            ebob = i

    ekok = carpım / ebob
    
    print(f"Ebob {ebob}")
    print(f"Ekok {int(ekok)}")

a = int(input("SAYI GİR: "))
b = int(input("SAYI GİR: "))

EkokVeEbobBulma(a,b)

soru_kelimesi = list()
chics = list()

for numara in range(1,5):
    while True:
    #sayılar = range(179)
    #chic_no = random.sample(sayılar,4)
    #i = random.randint(0,3)

        for j in range(0,4):
            if (self.key[chic_no[i]] in soru_kelimesi) or  self.value[chic_no[j]] in chics:
                continue
            else:
                soru_kelimesi.append(self.key[chic_no[i]])
                chics.append(self.value[chic_no[j]])
                break
