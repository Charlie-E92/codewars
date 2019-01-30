# Level - 7 Kyu

#Input : an array of integers.

#Output : this array, but sorted in such a way that there are two wings:
#the left wing with numbers decreasing,
#the right wing with numbers increasing.

#the two wings have the same length. If the length of the array is odd the wings are around the bottom, if the length is even the bottom is considered to be part of the right wing.

#each integer l of the left wing must be greater or equal to its counterpart r in the right wing, the difference l - r being as small as possible. In other words the right wing must be nearly as steeply as the left wing.

def make_valley(arr)
  higher = []
  lower = []
    # arrange array in order from highest to lowest
    sorted = arr.sort.reverse
    length = arr.length
    # collect values at the indexes with odd numbers as well as those with even numbers
    odd = sorted.values_at(* sorted.each_index.select {|i| i.odd?})
    even = sorted.values_at(* sorted.each_index.select {|i| i.even?})

    # if the length of the array is odd, push the lowest number from the 'even' array into 'odd'
    if arr.length % 2 == 1
      low = even.pop
      odd.push(low)
      return even + odd.reverse
    else
      return even + odd.reverse
    end
end
