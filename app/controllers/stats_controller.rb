class StatsController < ApplicationController

  before_action :authenticate_user!

  def index
    @love = current_user.moods.love
    @happy = current_user.moods.happy
    @neutral = current_user.moods.neutral
    @sad = current_user.moods.sad
    @first = current_user.moods.first
  end
end
