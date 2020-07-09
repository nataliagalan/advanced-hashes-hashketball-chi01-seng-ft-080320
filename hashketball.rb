require 'pry'
# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

def num_points_scored(player)
  points_scored = 0
  game_hash.each do |home_away, team_attributes|
      team_attributes[:players].each do |stats|
        if stats[:player_name] == player
            points_scored = stats[:points]
            return points_scored
        end
      end
  end
end

def shoe_size(player)
  shoe = 0
  game_hash.each do |home_away, team_attributes|
      team_attributes[:players].each do |stats|
        if stats[:player_name] == player
            shoe = stats[:shoe]
            return shoe
        end
      end
  end
end

def team_colors(team)
  colors = []
  game_hash.each do |home_away, team_attributes|
        if team_attributes[:team_name] == team
            colors = team_attributes[:colors]
            return colors
        end
  end
end

def team_names
 teams_array = []
  teams_array << game_hash[:home][:team_name]
  teams_array << game_hash[:away][:team_name]
  return teams_array
end

def player_numbers(team)
 team_numbers = []
  if game_hash[:home][:team_name] == team
    game_hash[:home][:players].each do |stats|
      team_numbers << stats[:number]
    end
 else game_hash[:away][:team_name] == team
    game_hash[:away][:players].each do |stats|
      team_numbers << stats[:number]
    end
  end
       return team_numbers
end

def player_stats(player)
  game_hash.each do |home_away, team_attributes|
      team_attributes[:players].each do |stats|
        if stats[:player_name] == player
            return stats
            binding.pry
        end
      end
   end
  end

  def big_shoe_rebounds
  biggest = 0
  rebounds = 0
  game_hash.each do |home_away, team_attributes|
    team_attributes[:players].each do |stats|
      size = stats[:shoe]
      if size > biggest
        biggest = size
        rebounds = stats[:rebounds]
      end
    end
  end
  rebounds
end
