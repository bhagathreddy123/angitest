class GamePolicy
  attr_reader :user, :game 

  def initialize(user, game)
	@user = user 
	@game = game 
  end

  def show?
	user_is_author_of_game?
  end

  private

  def user_is_author_of_game?
  	user == game.user
  end
end