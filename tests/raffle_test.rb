require 'minitest/autorun'
require_relative '../raffle'

class RaffleTest < Minitest::Test

  # test if the number of prizes is correct, and whether unique numbers are drawn
  def test_draw_prizes
    raffle = Raffle.new(100, ['First Prize', 'Second Prize', 'Third Prize'])
    winners = raffle.draw_prizes
    assert_equal 3, winners.size
    assert_equal winners.uniq, winners
  end

  # test if number of participants is less than the number of prizes
  def test_not_enough_participants
    raffle = Raffle.new(2, ['First Prize', 'Second Prize', 'Third Prize'])
    message = raffle.draw_prizes
    assert_equal "Not enough participants for the number of prizes.", message
  end
end
