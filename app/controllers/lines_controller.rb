class LinesController < ApplicationController
  before_action :require_login

  def index
    @lines = Line.all
  end

  # Implement other actions as needed
end