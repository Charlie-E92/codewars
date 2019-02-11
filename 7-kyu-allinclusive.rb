# Level - 7 Kyu

#Input:
#    a string strng
#    an array of strings arr
#Output of function contain_all_rots(strng, arr) (or containAllRots or contain-all-rots):
#    a boolean true if all rotations of strng are included in arr (C returns 1)
#    false otherwise (C returns 0)
#Examples:

#contain_all_rots(
#  "bsjq", ["bsjq", "qbsj", "sjqb", "twZNsslC", "jqbs"]) -> true

#contain_all_rots(
#  "Ajylvpy", ["Ajylvpy", "ylvpyAj", "jylvpyA", "lvpyAjy", "pyAjylv", "vpyAjyl", "ipywee"]) -> false)



def contain_all_rots(strng, arr)
  i = 0
  empty = []

    if strng.length == 0
      return true
    elsif strng.length > 0
     array = strng.split('')

      (0...strng.length).each {|num|
       rotate = array.rotate(num)
       joined_string = rotate.join('')

       i += 1 if arr.include?(joined_string)
      }
    end

    if i == strng.length
      return true
    else
      return false
    end
end
