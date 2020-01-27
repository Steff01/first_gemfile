require '../lib/jean_michel_trader'

describe "day_trader" do
    it "should return the index of min of buying and max of selling" do
        expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
    end
end