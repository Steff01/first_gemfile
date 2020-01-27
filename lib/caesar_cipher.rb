def caesar_cipher(text, ch)

    car=text.split(//)
    ascii=car.map{|a|  
        if /[a-zA-Z]/.match(a)
            a.bytes
        else
            a
        end
    }.flatten.collect{|let| 
        if let.respond_to?(:integer?)
            if let>=97 && (let+ch)>122
                (97+(let+ch)-122-1).chr
            elsif let>=65 && let<=90 && (let+ch)>90
                (65+(let+ch)-90-1).chr
            else    
                (let+ch).chr
            end
        else
            let
        end
    }.join

return ascii
end
