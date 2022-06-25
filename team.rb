class Team
  
  attr_accessor :team, :win, :lose, :draw
  
  def initialize(suffix)
    team = ["Giants","Tigers","Dragons","BayStars","Carp","Swallows"]
    win = ["67","60","60","56","52","41"]
    lose = ["45","53","55","58","56","69"]
    draw = ["8","7","5","6","12","10"]
    self.team = team[suffix]
    self.win =  win[suffix]
    self.lose = lose[suffix]
    self.draw = draw[suffix]
  end 

  def calc_win_rate
    self.win.to_f/(self.win.to_f+self.lose.to_f)
  end 
  
  def show_team_result
   puts "#{self.team} の２０２０年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は #{self.calc_win_rate
   }です。"
  end 
end 

Giants =   Team.new(0)
Tigers =   Team.new(1)
Dragons =  Team.new(2)
BayStars = Team.new(3)
Carp =     Team.new(4)
Swallows = Team.new(5)

Giants.show_team_result
Tigers.show_team_result
Dragons.show_team_result
BayStars.show_team_result
Carp.show_team_result
Swallows.show_team_result