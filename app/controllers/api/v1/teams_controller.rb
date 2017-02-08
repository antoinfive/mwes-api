module Api::V1
  class TeamsController < ApplicationController
    def index 
      @teams = Team.all
    end
  end
end
