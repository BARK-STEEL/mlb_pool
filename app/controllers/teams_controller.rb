class TeamsController < ApplicationController
  def index
    @teams = Team.order("team ASC")
  end
end
