# Level - 6 Kyu

#You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N.
#Write a method that takes the array as an argument and returns this "outlier" N.

def find_outlier(integers)
  if integers[0] % 2 == 0 && integers[1] % 2 == 0 || integers[0] % 2 == 0 && integers[2] % 2 == 0 || integers[1] % 2 == 0 && integers[2] % 2 == 0
    odd(integers)
  elsif integers[0] % 2 == 1 && integers[1] % 2 == 1 || integers[0] % 2 == 1 && integers[2] % 2 == 1 || integers[1] % 2 == 1 && integers[2] % 2 == 1
    even(integers)
  end
end

def odd(array)
  array.each {|num|
    if num % 2 == 1
      return num
    end
  }
end

def even(array)
  array.each {|num|
    if num % 2 == 0
      return num
    end
  }
end
