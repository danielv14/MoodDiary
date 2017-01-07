class QuotaController < ApplicationController
  before_action :posted_yet
  def index
    @mood = current_user.moods.today.take
  end

  private
    # Redirect to root if user hasnt created a mood yet today
    def posted_yet
      if current_user.moods.today.count == 0
        respond_to do |format|
          format.html { redirect_to root_path }
        end
      end
    end
end
