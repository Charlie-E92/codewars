# Level - 7 Kyu

#In this kata you get the start number and the end number of a region and should return the count of all numbers except numbers with a 5 in it.
#The start and the end number are both inclusive!

def dont_give_me_five(start_,end_)
  array = (start_..end_).to_a

  array.delete_if {|x| x.to_s.include?("5")}
  n = array.count
  return n
end
