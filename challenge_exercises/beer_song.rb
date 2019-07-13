# "99 bottles of beer on the wall, 99 bottles of beer.\n" \
      # "Take one down and pass it around, 98 bottles of beer on the wall.\n"

      # "2 bottles of beer on the wall, 2 bottles of beer.\n" \
      # "Take one down and pass it around, 1 bottle of beer on the wall.\n"

# "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      # "Take it down and pass it around, no more bottles of beer on the wall.\n"


      # "No more bottles of beer on the wall, no more bottles of beer.\n" \
      # "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
class BeerSong
  BOTTLE_MOD = {
    two_or_more: "num bottles",
    one: "num bottle",
    zero: "No more bottles"
  }

  ENDING = {
    two_or_more: "Take one down and pass it around,",
    one: "Take it down and pass it around,",
    zero: "Go to the store and buy some more,"
  }

  def verse(num)
    bottle_key = get_bottle_key(num)
    beginning = get_beginning(bottle_key, num)
    ending = ENDING[bottle_key]

    first_part =  "#{beginning} of beer on the wall, #{beginning.downcase} of beer.\n"
    num = num - 1 < 0 ? 99 : num - 1

    bottle_key = get_bottle_key(num)
    beginning = get_beginning(bottle_key, num)
    second_part = "#{ending} #{beginning.downcase} of beer on the wall.\n"

    first_part + second_part
  end

  def get_beginning(bottle_key, num)
    BOTTLE_MOD[bottle_key].gsub('num', num.to_s)
  end

  def get_bottle_key(num)
    case
    when num >= 2 then  :two_or_more
    when num == 1 then  :one
    else                :zero
    end
  end

  def verses(beginning, ending)
    song = ''
    beginning.downto(ending + 1) {|num| song << verse(num) + "\n"}
    song << verse(ending)
    song
  end

  def lyrics
    verses(99, 0)
  end
end

beersong = BeerSong.new
beersong.verses(99, 98)


