# Level - 7 Kyu

#Two red beads are placed between every two blue beads.
#There are N blue beads. After looking at the arrangement below work out the number of red beads.

#Implement count_red_beads(n) (in PHP count_red_beads(n) so that it returns the number of red beads.
#If there are less than 2 blue beads return 0.

def count_red_beads(n)
  if n > 2
    return n * 2 - 2
  elsif n < 2
    return 0
  end
end

count_red_beads(5)
