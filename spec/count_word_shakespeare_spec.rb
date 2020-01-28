require '../lib/count_word_shakespeare'

describe "count_word" do
    describe "count_word_shakespeare" do
        it "should return the sum of each word in the dictionnary" do
            expect(word_shakespeare(["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"])).to eq({"the"=>23242, "of"=>15544, "and"=>18297, "to"=>15623, "a"=>12532, "in"=>9576, "for"=>5616, "is"=>7851, "on"=>2440, "that"=>7531, "by"=>2824, "this"=>4771, "with"=>6722, "you"=>9081, "it"=>4912, "not"=>6948, "or"=>1731, "be"=>6002, "are"=>2917})
        end


    end

    describe "count_word_shakespeare" do
        it "should return the sum of swearwords in shakespeare" do
            expect(swearwords(swearwords.txt)).to eq(417)
        end
 
    end
end