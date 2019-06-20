class UsersController < ApplicationController
  def index
    
  end

  def ajax
    # @location_x = params[:lat]
    # @location_y = params[:lng]

    @locations = Location.new(lat: params[:lat], lng: params[:lng])
    @locations.save!

    @diaries = Diary.new(location: params[:location])
    @diaries.save!

  end

end