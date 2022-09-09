cumleler = File.read("cumleler.txt")
cumleler = cumleler.downcase.split

kelimeler = []

(0..cumleler.size).each do |i|

  if cumleler[i] == nil
    break
  else
    kelimeler = kelimeler | [cumleler[i]]
  end
end

kelime_hash = {}

kelimeler.each_with_index do |kelime,i|
  kelime_hash[kelime] = i + 1
end

puts kelime_hash

kelime_hash["OVV"] = kelime_hash.size + 1

puts "************************************************"
puts kelime_hash

a = File.read("cumleler.txt")
cumleler = a.split("\n")

cumleler.each do |cumle|
  cumle1 = cumle.downcase.split
  values = []

  cumle1.each do |key|
    values << kelime_hash[key]
  end

  puts "#{cumle} --> #{values}"
end

print "Cumle giriniz: " # Hocam Türkçe karakter kullanınca hata verebiliyor. Saygılarımla.
b = gets.chomp.to_s
cumle1 = b.downcase.split

values = []

cumle1.each do |key|
  key.delete! "!,:.;?()[]'/{}"

  if kelime_hash[key] == nil
    key = "OVV"
    values << kelime_hash[key]
  else
    values << kelime_hash[key]
  end
end

puts "#{b} --> #{values}"
