def sum_of_3_and_5_multiples(n)
    if n>=0 && n.integer?
     return lst=(1..n).to_a.map{|m|  
         if (m%3 == 0 || m%5==0) && m<n
         m
         else
             0
         end
     }.sum
     else
         return nil
     end
 end
 #sum_of_3_and_5_multiples
