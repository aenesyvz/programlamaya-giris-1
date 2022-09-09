import random
import time

class QuizOlusturma():
    def __init__(self):
        with open ("veriKaynagı.txt","r",encoding="utf-8") as file:
            dosya_icerigi = file.read()

        self.satırlar  = dosya_icerigi.split("\n")
        self.key = list()
        self.value = list()
        self.dictionary = dict()
        self.yanlıslar = list()
        self.score = 0

        while True:
            self.secım = input("""Sınavınız nasıl olsun? Aşağıdaki seçeneklerden yalnız birinin kodunu giriniz
=> Türkçe - İngilizce (1)
=> İngilizce - Türkçe (2) 
Seçiminiz: """)

            if self.secım == "1" or self.secım == "2":
                break
            else:
                print("Lütfen aşağıdaki kodlardan birini seçiniz!!!")

    def KelimeleriAyristirma(self):
        for satır in self.satırlar:
            ayrıstırma = satır.split(":")
            ayrıstırma[0] = ayrıstırma[0].strip(" ")
            ayrıstırma[1] = ayrıstırma[1].strip(" ")

            if self.secım == "1":
                self.dictionary[ayrıstırma[1]] = ayrıstırma[0]
                self.key.append(ayrıstırma[1])
                self.value.append(ayrıstırma[0])                
            else:
                self.dictionary[ayrıstırma[0]] = ayrıstırma[1]
                self.key.append(ayrıstırma[0])
                self.value.append(ayrıstırma[1])

    def SorularVeCevaplar(self):
        print("Test sınavınız oluşturuluyor.Lütfen bekleyiniz....")
        time.sleep(1)

        soru_kelimesi = list()
        chics = list()

        for numara in range(1,5):
            while True:
                sayılar = range(179)
                chic_no = random.sample(sayılar,4)
                i = random.randint(0,3)    

                if (self.key[chic_no[i]] in soru_kelimesi):
                    continue
                else:
                    soru_kelimesi.append(self.key[chic_no[i]])
                    break

            while True:
                cevap = input(f"""{numara}.soru {self.key[chic_no[i]]} anlamı nedir?
A) {self.value[chic_no[0]]}
B) {self.value[chic_no[1]]}
C) {self.value[chic_no[2]]}
D) {self.value[chic_no[3]]}
Cevap: """)

                cevap = cevap.upper()
                chic = {"A":self.value[chic_no[0]],"B":self.value[chic_no[1]],"C":self.value[chic_no[2]],"D":self.value[chic_no[3]]}
                
                try:
                    if chic[cevap] == self.value[chic_no[i]]:
                        self.score += 25
                    else:
                        yanlıs = f"{numara}.soru: {self.key[chic_no[i]]} -------> {self.value[chic_no[i]]}"
                        self.yanlıslar.append(yanlıs)
                    break
                except:
                    print("Lütfen şık giriniz....")
                
    def Donut(self):
        print("------------------------------------")
        print(f"Sınavdan {self.score} puan aldınız.")
        
        for hata in self.yanlıslar:
            print(hata)

dosya = QuizOlusturma()
dosya.KelimeleriAyristirma()
dosya.SorularVeCevaplar()
dosya.Donut()