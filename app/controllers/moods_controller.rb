class MoodsController < ApplicationController
  before_action :set_mood, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :once_per_day, only: [:create, :new]


  # GET /moods
  # GET /moods.json
  def index
    @moods = current_user.moods.all
  end

  # GET /moods/1
  # GET /moods/1.json
  def show
  end

  # GET /moods/new
  def new
    @mood = current_user.moods.new
  end

  # GET /moods/1/edit
  def edit
  end

  # POST /moods
  # POST /moods.json
  def create
    @mood = current_user.moods.new(mood_params)

    respond_to do |format|
      if @mood.save
        format.html { redirect_to @mood, notice: 'Mood was successfully created.' }
        format.json { render :show, status: :created, location: @mood }
      else
        format.html { render :new }
        format.json { render json: @mood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moods/1
  # PATCH/PUT /moods/1.json
  def update
    respond_to do |format|
      if @mood.update(mood_params)
        format.html { redirect_to @mood, notice: 'Mood was successfully updated.' }
        format.json { render :show, status: :ok, location: @mood }
      else
        format.html { render :edit }
        format.json { render json: @mood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moods/1
  # DELETE /moods/1.json
  def destroy
    @mood.destroy
    respond_to do |format|
      format.html { redirect_to moods_url, notice: 'Mood was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mood
      @mood = current_user.moods.find(params[:id])
    end

    # only let user create a mood entry once a day
    def once_per_day
      if current_user.moods.today.count >= 1
        respond_to do |format|
          format.html { redirect_to quota_url }
        end
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mood_params
      params.require(:mood).permit(:mood)
    end
end
