class Provider::HotelsController < Provider::BaseController
  before_action :set_hotel, only: [:show, :edit, :update, :destroy]
  before_action :set_category, only: [:edit]  

  def index
    @hotels = @provider.hotels
  end

  def new
    @hotel = @provider.hotels.new
    @cities = City.all
    @countries = Country.all
  end

  # GET /hotels/1/edit
  def edit
    @cities = City.all
    @countries = Country.all
    @image_arrangement_form = ImageArrangementForm.new(hotel_id: @hotel.id)
  end

  def show
  end

  # POST /hotels
  # POST /hotels.json
  def create
    @hotel = @provider.hotels.new(hotel_params)
    
    respond_to do |format|
      if @hotel.save
        format.html { redirect_to edit_provider_hotel_path(id: @hotel.id), notice: 'Hotel was successfully created.' }
        format.json { render :show, status: :created, location: @hotel }
      else
        format.html { render :new }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hotels/1
  # PATCH/PUT /hotels/1.json
  def update
    respond_to do |format|
      if @hotel.update(hotel_params)
        format.html { render :edit, notice: 'Hotel was successfully updated.' }
        format.json { render :show, status: :ok, location: @hotel }
      else
        format.html { render :edit }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotels/1
  # DELETE /hotels/1.json
  def destroy
    @hotel.destroy
    respond_to do |format|
      format.html { redirect_to provider_hotels_url, notice: 'Hotel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add_articles
    @hotel = @provider.hotels.find(params[:hotel_id])
    @hotel.articles.push(params[:hotel][:article])
    respond_to do |format|
      if @hotel.save
        format.html { redirect_to edit_provider_hotel_path(id: params[:hotel_id]), notice: 'added articles' }
      else
        format.html { render :edit, notice: 'fail to add articles' }
      end
    end
  end

  def remove_articles
    @hotel = @provider.hotels.find(params[:hotel_id])
    @hotel.articles.delete(params[:hotel][:article])
    respond_to do |format|
      if @hotel.save
        format.html { redirect_to edit_provider_hotel_path(id: params[:hotel_id]), notice: 'removed articles' }
      else
        format.html { render :edit, notice: 'fail to add articles' }
      end
    end
  end

  def image_arrangement
    @image_arrangement_form = ImageArrangementForm.new(image_arrangement_params)

    if @image_arrangement_form.save
      redirect_to :back
    else
      redirect_to root_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hotel
      @hotel = @provider.hotels.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hotel_params
      params.require(:hotel).permit(:name, :city_id, :aasm_state, :slug, :description, :address, :email, :website, :phone_no, :article, :articles)
    end
    
    def set_category
      @category = case params[:c]
        when 'photos' then 'photos'
        when 'affiliates' then 'affiliates'
      end
    end
    
    def image_arrangement_params
      params.require(:image_arrangement_form).permit(:hotel_id, image_attributes: [:id, :position, :caption])
    end
end
