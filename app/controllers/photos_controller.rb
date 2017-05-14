class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy, :like, :unlike]

  # GET /photos
  # GET /photos.json
  def like
    @like = @photo.likes.build(user_id: current_user.id)
    if @like.save
      flash[:success] = "You have liked this photo!"
      redirect_to @photo
    else
      flash[:alert] = "You have already liked this photo!"
      redirect_to @photo
    end
  end

  def unlike
    @photo.likes.where(user_id: current_user.id).delete_all
    respond_to do |format|
      format.html { redirect_to @photo, :flash => { :notice => 'You have successfully unliked this photo.' } }
    end
  end
  # GET /photos
  # GET /photos.json
  def index
    @photos = Photo.where(["photos.description LIKE ?", "%#{params[:search]}%"])
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
      @photo = Photo.find(params[:id])
      @comments = @photo.comments.all
      @comment = @photo.comments.build
  end

  # GET /photos/new
  def new
    @photo = Photo.new
  end

  # GET /photos/1/edit
  def edit
      if current_user
          if current_user.email == "admin@admin.pl"
              current_user.admin = true
          end
      end
      if @photo.user != current_user && current_user.admin == false
          respond_to do |format|
              format.html { redirect_to @photo, notice: "Sorry, you're not allowed to do that!" }
              format.json { head :no_content }
          end
      end
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = Photo.new(photo_params)
    @photo.user = current_user

    respond_to do |format|
      if @photo.save
        format.html { redirect_to @photo, notice: 'Photo was successfully created.' }
        format.json { render :show, status: :created, location: @photo }
      else
        format.html { render :new }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photos/1
  # PATCH/PUT /photos/1.json
  def update
      if current_user
          if current_user.email == "admin@admin.pl"
              current_user.admin = true
          end
      end
      if @photo.user == current_user || current_user.admin?
        respond_to do |format|
          if @photo.update(photo_params)
            format.html { redirect_to @photo, notice: 'Photo was successfully updated.' }
            format.json { render :show, status: :ok, location: @photo }
          else
            format.html { render :edit }
            format.json { render json: @photo.errors, status: :unprocessable_entity }
          end
        end
        end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
      if current_user
          if current_user.email == "admin@admin.pl"
              current_user.admin = true
          end
      end
    if @photo.user == current_user || current_user.admin?
        @photo.destroy
        respond_to do |format|
          format.html { redirect_to photos_url, notice: 'Photo was successfully destroyed.' }
          format.json { head :no_content }
        end
    else
        respond_to do |format|
            format.html { redirect_to @photo, notice: "Sorry, you're not allowed to do that!" }
            format.json { head :no_content }
        end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:title, :description, :file)
    end
end
