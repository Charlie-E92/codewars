# Level - 6 Kyu.

#Selection Grid Layout in text:
#| Ryu  | E.Honda | Blanka  | Guile   | Balrog | Vega    |
#| Ken  | Chun Li | Zangief | Dhalsim | Sagat  | M.Bison |

#Input
#    the list of game characters in a 2x6 grid;
#    the initial position of the selection cursor (top-left is (0,0));
#    a list of moves of the selection cursor (which are up, down, left, right);

#Output
#    the list of characters who have been hovered by the selection cursor after all the moves (ordered and with repetition, all the ones after a move, wether successful or not, see tests);

#Rules
#Selection cursor is circular horizontally but not vertically!
#As you might remember from the game, the selection cursor rotates horizontally but not vertically; that means that if I'm in the leftmost an

def streetFighterSelection(fighters, position, moves)
  i = 0
  x = 0
  empty = []

  moves.each {|move|

    if move == "up"
      i -= 1 unless i == 0
      empty.push(fighters[i][x])
    elsif move == "down"
      i += 1 unless i == 1
      empty.push(fighters[i][x])
    elsif move == "left" && x > -6
      x -= 1
      empty.push(fighters[i][x])
    elsif move == "left" && x == -6
      x = -1
      empty.push(fighters[i][x])
    elsif move == "right" && x < 5
      x += 1
      empty.push(fighters[i][x])
    elsif move == "right" && x == 5
      x = 0
      empty.push(fighters[i][x])
    end
  }
  return empty
end
