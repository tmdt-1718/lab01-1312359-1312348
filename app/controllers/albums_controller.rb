class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :edit, :update, :destroy]
  before_action :require_same_user, only: [:edit, :update, :destroy]

  # GET /albums
  # GET /albums.json
  def index
    @albums = Album.all
  end

  # GET /albums/1
  # GET /albums/1.json
  def show
  end

  # GET /albums/new
  def new
    @album = Album.new
  end

  # GET /albums/1/edit
  def edit
  end

  # POST /albums
  # POST /albums.json
  def create
    @album = Album.new(album_params)
    @album.user = current_user
    if @album.save!
      flash[:success] = "Album was successfully created"
    else
      flash[:danger] = "Something go wrong"
    end
    redirect_to albums_path
  end

  # PATCH/PUT /albums/1
  # PATCH/PUT /albums/1.json
  def update
    
  end

  # DELETE /albums/1
  # DELETE /albums/1.json
  def destroy
    @album.destroy
    flash[:success] = "Delete done"
    redirect_back(fallback_location: root_path)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      @album = Album.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def album_params
      params.require(:album).permit(:title, :description, {images: []})
    end
    
    # User only perfome action to own albums
    def require_same_user
      if current_user != @album.user
        flash[:danger] = "You can only edit or delete your own albums"
        redirect_to albums_path
      end  
    end
end
