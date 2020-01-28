def word_shakespeare(dico)
    dico = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
    shakespeare = File.readlines('shakespeare.txt').map{|line| line.split(" ")}.flatten

    dictionnary=Hash.new(0)
 
    #count number of dico
    dico.each{|mot| if shakespeare.include?(mot)
    dictionnary[mot]=shakespeare.count(mot)
            end
    }
    #count number swearwords

return dictionnary

end 

def swearwords()
    swearwords= File.open('swearwords.txt').map{|line| line.gsub(/[\r\n]/, "")}
    shakespeare = File.readlines('shakespeare.txt').map{|line| line.split(" ")}.flatten
    sw=[]
    swearwords.each{|word| if shakespeare.include?(word)
    sw<<shakespeare.count(word)
            end
    }
    return sw.sum
end
swearwords()