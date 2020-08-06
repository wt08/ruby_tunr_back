class RelatesController < ApplicationController
  before_action :set_relate, only: [:show, :update, :destroy]

  # GET /relates
  def index
    @relates = Relate.all

    render json: @relates
  end

  # GET /relates/1
  def show
    render json: @relate
  end

  # POST /relates
  def create
    @relate = Relate.new(relate_params)

    if @relate.save
      render json: @relate, status: :created, location: @relate
    else
      render json: @relate.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /relates/1
  def update
    if @relate.update(relate_params)
      render json: @relate
    else
      render json: @relate.errors, status: :unprocessable_entity
    end
  end

  # DELETE /relates/1
  def destroy
    @relate.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relate
      @relate = Relate.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def relate_params
      params.require(:relate).permit(:playlist_id, :song_id)
    end
end
