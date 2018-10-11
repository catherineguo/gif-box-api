# frozen_string_literal: true

class GifsController < ProtectedController
  before_action :set_gif, only: %i[show update destroy]

  # GET /gifs
  def index
    @gifs = current_user.gifs.all.order(updated_at: :desc)

    render json: @gifs
  end

  # GET /gifs/1
  def show
    render json: @gif
  end

  # POST /gifs
  def create
    @gif = current_user.gifs.build(gif_params)

    if @gif.save
      render json: @gif, status: :created
    else
      render json: @gif.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gifs/1
  def update
    if @gif.update(gif_params)
      render json: @gif
    else
      render json: @gif.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gifs/1
  def destroy
    @gif.destroy

    head :no_content
  end

  def set_gif
    @gif = current_user.gifs.find(params[:id])
  end

  def gif_params
    params.require(:gif).permit(:name, :gif_url)
  end

  private :set_gif, :gif_params
end
