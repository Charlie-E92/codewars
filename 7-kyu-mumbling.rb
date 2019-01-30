# Level - 7 Kyu

#Examples:

#accum("abcd") -> "A-Bb-Ccc-Dddd"
#accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
#accum("cwAt") -> "C-Ww-Aaa-Tttt"

#The parameter of accum is a string which includes only letters from a..z and A..Z.

def accum(s)
  array = []
  x = 1
  puts s[x].capitalize

  while x < s.length
    string = s[x] * (x + 1)
    array.push(string)
    x = x + 1
  end

  puts array
  array.each {|string| puts string.capitalize! }
  return s[0].capitalize + "-" + array.join("-")
end
