require( "minitest/autorun" )
require_relative( "./sports_team" )

class TestTeam < MiniTest::Test

  def setup()
    @team = Team.new("Edinburgh",["Player 1", "Player 2", "Player 3"],"Bruce")
  end

  def test_team_name
    @team.team_name = "Glasgow"
    assert_equal("Glasgow", @team.team_name())
  end

  # def test_team_name_fail
  #   team = Team.new("Edinburgh",["Player 1", "Player 2", "Player 3"],"Bruce")
  #   assert_equal("Glasgow", team.team_name())
  # end

  def test_team_number
    @team.players = ["Player 4", "Player 6", "Player 8"]
    assert_equal(["Player 4", "Player 6", "Player 8"], @team.players())
  end

  def test_coach_name
    @team.coach = "David Burnett"
    assert_equal("David Burnett", @team.coach())
  end

  def test_add_player
    assert_equal(["Player 1", "Player 2", "Player 3", "Player X"], @team.players_add("Player X"))
  end

  def test_player_check()
    assert_equal(false, @team.player_check("Player X"))
  end

  def test_score_update()
    assert_equal(3,@team.score_update("Win"))
  end

end
