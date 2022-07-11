class Team
  
  attr_accessor :team, :win, :lose, :draw
  
  def initialize(team,win,lose,draw)
    self.team = team
    self.win =  win
    self.lose = lose
    self.draw = draw
  end 

  def calc_win_rate
    self.win.to_f/(self.win.to_f+self.lose.to_f)
  end 
  
  def show_team_result
   puts "#{self.team} の２０２０年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は #{self.calc_win_rate
   }です。"
  end 
end 

giants =   Team.new("Giants",67,45,8)
tigers =   Team.new("Tigers",60,53,7)
dragons =  Team.new("Dragons",60,55,5)
bayStars = Team.new("BayStars",56,58,6)
carp =     Team.new("Carp",52,56,12)
swallows = Team.new("Swallows",41,69,10)

giants.show_team_result
tigers.show_team_result
dragons.show_team_result
bayStars.show_team_result
carp.show_team_result
swallows.show_team_result