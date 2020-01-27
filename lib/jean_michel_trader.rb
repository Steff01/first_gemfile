def day_trader(price)

index_hash=Hash.new
i=0
max_index=price.count-1

while i<max_index
    left_price=price[(i+1)..max_index]
    max_price=left_price.max
    price_buy=price[i]
    benefit=left_price.max-price_buy
    if benefit >= 0
    index_hash[benefit]=[i,price.index(max_price)]
    end
        i+=1
end
ben=[]
index_hash.each_key{|k| ben<<k}
max_benefit=ben.max
return index_hash[max_benefit]
end
