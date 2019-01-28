require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

  def setup
    @game1 = Game.new( "rock", "scissors" )
    @game2 = Game.new( "rock", "paper" )
    @game3 = Game.new( "scissors", "rock" )
    @game4 = Game.new( "scissors", "paper" )
    @game5 = Game.new( "paper", "scissors" )
    @game6 = Game.new( "paper", "rock" )
    @game7 = Game.new( "rock", "rock" )
  end

  def test_results_check__rock_win
    assert_equal("player 1 wins with rock!", @game1.result_check())
  end

  def test_results_check__paper_win
    assert_equal("player 2 wins with paper!", @game2.result_check())
  end

  def test_results_check__rock2_win
    assert_equal("player 2 wins with rock!", @game3.result_check())
  end

  def test_results_check__scissors_win
    assert_equal("player 1 wins with scissors!", @game4.result_check())
  end

  def test_results_check__scissors2_win
    assert_equal("player 2 wins with scissors!", @game5.result_check())
  end

  def test_results_check__paper2_win
    assert_equal("player 1 wins with paper!", @game6.result_check())
  end

  def test_results_check__draw
    assert_equal("draw!", @game7.result_check())
  end



end
