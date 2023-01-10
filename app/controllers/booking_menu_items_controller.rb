class BookingMenuItemsController < ApplicationController
  def index
    @bookingMenuItems = BookingMenuItem.all 
    render json: @bookingMenuItems
  end 

  def show
      @bookingMenuItem = BookingMenuItem.find(params[:id])
      render json: @bookingMenuItem
  end 

  def create
      @bookingMenuItem = BookingMenuItem.create(
          item_name: params[:item_name],
          image_url: params[:image_url],
          item_fee: params[:item_fee],
          item_description: params[:item_description]
      )
      render json: @bookingMenuItem
  end 

  def update
      @bookingMenuItem = BookingMenuItem.find(params[:id])
      @bookingMenuItem.update(
          item_name: params[:item_name],
          image_url: params[:image_url],
          item_fee: params[:item_fee],
          item_description: params[:item_description]
      )
      render json: @bookingMenuItem
  end 

  def destroy
      @bookingMenuItems = BookingMenuItem.all 
      @bookingMenuItem = BookingMenuItem.find(params[:id])
      @bookingMenuItem.destroy
      render json: @bookingMenuItems
  end 
end
