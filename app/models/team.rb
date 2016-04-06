class Team < ActiveRecord::Base
  def left
    left = 13
    if zero
      left -= 1
    end
    if one
      left -= 1
    end
    if two
      left -= 1
    end
    if three
      left -= 1
    end
    if four
      left -= 1
    end
    if five
      left -= 1
    end
    if six
      left -= 1
    end
    if seven
      left -= 1
    end
    if eight
      left -= 1
    end
    if nine
      left -= 1
    end
    if ten
      left -= 1
    end
    if eleven
      left -= 1
    end
    if twelve
      left -= 1
    end
    left
  end
end
