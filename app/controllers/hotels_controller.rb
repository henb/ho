class HotelsController < ApplicationController
  load_and_authorize_resource
  before_action :set_hotel, only: [:show, :edit, :update, :destroy]

  # GET /hotels
  def index
    @hotels = Hotel.order('star_rating DESC').paginate(page: params[:page], per_page: 5)
  end

  def top
    @hotels = Hotel.joins(:rate_average).order('rating_caches.avg DESC')
                  .paginate(page: params[:page], per_page: 5)
    render action: 'index'
  end

  # GET /hotels/1
  def show
  end

  # GET /hotels/new
  def new
    @hotel = Hotel.new
    @hotel.build_address
  end

  # GET /hotels/1/edit
  def edit
  end

  # POST /hotels
  def create
    @hotel = Hotel.new(hotel_params)

    if @hotel.save
      redirect_to @hotel, notice: 'Hotel was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /hotels/1
  def update
    if @hotel.update(hotel_params)
      redirect_to @hotel, notice: 'Hotel was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /hotels/1
  def destroy
    @hotel.destroy
    redirect_to hotels_url, notice: 'Hotel was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_hotel
    @hotel = Hotel.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def hotel_params
    params.require(:hotel).permit(:title, :star_rating,
                                  :breakfast_included,
                                  :room_description,
                                  :photo,
                                  :price_for_room,
                                  address_attributes: [:countr, :state, :city, :street])
  end
end
