require '../lib/caesar_cipher'

describe "caesar_cipher" do
    it "should return text by increment of number in" do
      expect(caesar_cipher("bad",2)).to eq("dcf")
    end
  
    it "should keep the capital position" do
        expect(caesar_cipher("comPlet!",1)).to eq("dpnQmfu!")
    end

end