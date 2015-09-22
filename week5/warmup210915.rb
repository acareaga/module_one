# 8 teams
#
# 4 games on saturday

class TeamMaker

  def self.match_teams(teams)
    game_1 = []
    game_1 << teams.pop(2)
    game_2 = []
    game_2 << teams.pop(2)
    games = [game_1, game_2]
  end

end
