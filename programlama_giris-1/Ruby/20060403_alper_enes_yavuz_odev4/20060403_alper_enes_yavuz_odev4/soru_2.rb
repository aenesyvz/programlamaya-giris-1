a = 1
b = 1
c = 1

while a < 10
    while b < 10
        while c < 10
            c += 1
            pay = (10 * a) + b
            payda = (10 * b) + c

            if pay < payda && (pay.to_f / payda.to_f) == (a.to_f / c.to_f)
                puts "#{pay} / #{payda} = #{a} / #{c}"
            end
        end
        b += 1
        c = 1
    end
    a += 1
    b = 1
    c = 1
end