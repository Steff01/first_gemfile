#dictionary=["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]   

def word_counter(corpus="Howdy partner, sit down! How's it going?",dictionary=["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"])
    dictionary=["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]   
    count=Hash.new(0)
    dictionary.each{|mot| if corpus.downcase.include?(mot)
        count[mot]=(corpus.downcase.split(mot).length)-1
    end
    }

print count
end

word_counter