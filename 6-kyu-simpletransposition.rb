# Level - 6 Kyu

#Simple transposition is a basic and simple cryptography technique. We make 2 rows and put first a letter in the Row 1,
#the second in the Row 2, third in Row 1 and so on until the end. Then we put the text from Row 2 next to the Row 1 text and thats it.

#For example if the text to encrypt is: "Simple text", the returned string will be: "Sml etipetx"

def simple_transposition(text)
  array = text.split('')
  even = array.values_at(* array.each_index.select {|i| i.even?})
  odd = array.values_at(* array.each_index.select {|i| i.odd?})

  return even.join('') + odd.join('')
end
