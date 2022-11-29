class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) {Array.new([:stone])}
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each

  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if !(1..13).include?(start_pos)
    raise "Starting cup is empty" if self[start_pos].empty
  end

  def make_move(start_pos, current_player_name)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    # not sure if this is even remotely correct
    @cups.one? { |cup| cup.empty?}
  end

  def winner
    return :draw if @cups[6].count == @cups[13].count
    if @cups[6].count > @cups[13].count
      return "Erica"
    else
      return "James"
    end
  end
end
