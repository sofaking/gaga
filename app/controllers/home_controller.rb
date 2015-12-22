class HomeController < ApplicationController
  def index
    @events ||= Event.all
    @games = Game.all
  end

  def filter
    @events = Event.joins(:games).where 'games.id' => params[:filter][:games]
    render action: :index
  end
end
