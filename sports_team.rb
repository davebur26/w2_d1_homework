class Team

  attr_reader( :team_name, :players, :coach, :points)

  attr_writer( :team_name, :players, :coach, :points)

  def initialize(team_name,  players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end


  def players_add(name)
    @players.push(name)
  end

  def player_check(name)
    if players.include?("Player X")
      return true
    end
    return false
  end

  def score_update(result)
    if result == "Win"
      return @points + 3
    elsif result == "Draw"
      return @points + 1
    else
      return @points
    end
  end

end
