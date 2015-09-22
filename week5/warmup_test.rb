require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './warmup210915'

class WarmUp < Minitest::Test

  def test_compare_two_teams
    teams = ["a", "b", "c", "d"]
    matched_teams = TeamMaker.match_teams(teams)
    assert_equal 2, matched_teams.count
    assert_equal 2, matched_teams[0].count
    assert matched_teams[0][0] != matched_teams[0][1]
  end

end
