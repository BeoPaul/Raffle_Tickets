class Raffle
  attr_accessor :num_participants, :prizes

  def initialize(num_participants, prizes)
    @num_participants = num_participants
    @prizes = prizes
    @tickets = (1..@num_participants).to_a
  end

  def draw_prizes
    if @num_participants < @prizes.length
      return "Not enough participants for the number of prizes."
    end

    @tickets.shuffle!
    @prizes.map { @tickets.pop }
  end
end
