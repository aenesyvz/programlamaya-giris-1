puts "Kurus miktari giriniz (1 ile 99 arasinda)"
kurus_miktari = gets.chomp.to_i
puts "Girilen miktar = #{kurus_miktari}"
puts "Girdiginiz kurus miktari asagidaki gibi gosterilebilir."
puts "\n#{kurus_miktari} kurusun esiti:"
elli_kurus = (kurus_miktari / 50).to_i
puts "#{elli_kurus} tane 50 kurus" 
elli_kurus = (elli_kurus * 50)
kurus_miktari = (kurus_miktari - elli_kurus)
on_kurus = (kurus_miktari / 10).to_i
puts "#{on_kurus} tane 10 kurus" 
on_kurus = (on_kurus * 10)
kurus_miktari = (kurus_miktari - on_kurus)
bes_kurus = (kurus_miktari / 5).to_i
puts "#{bes_kurus} tane 5 kurus"
bes_kurus = (bes_kurus * 5)
kurus_miktari = (kurus_miktari - bes_kurus)
bir_kurus = (kurus_miktari / 1).to_i
puts "#{bir_kurus} tane 1 kurus" 




