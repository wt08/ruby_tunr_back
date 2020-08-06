class JoinsController < ApplicationController
  before_action :set_join, only: [:show, :update, :destroy]

  # GET /joins
  def index
    @joins = Join.all

    render json: @joins
  end

  # GET /joins/1
  def show
    render json: @join
  end

  # POST /joins
  def create
    @join = Join.new(join_params)

    if @join.save
      render json: @join, status: :created, location: @join
    else
      render json: @join.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /joins/1
  def update
    if @join.update(join_params)
      render json: @join
    else
      render json: @join.errors, status: :unprocessable_entity
    end
  end

  # DELETE /joins/1
  def destroy
    @join.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_join
      @join = Join.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def join_params
      params.require(:join).permit(:song_id, :playlist_id)
    end
end
