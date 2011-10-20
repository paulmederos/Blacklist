class BusinessesController < ApplicationController
  helper_method :business
  respond_to :html, :json, :xml


  def index
    @businesses = Business.all
    respond_with @businesses
  end


  def show
    respond_with business
  end


  def new
    @business = Business.new
    respond_with(@business)
  end


  def edit
    respond_with business
  end


  # POST /businesses
  def create
    @business = Business.new(params[:business])
    flash[:notice] = 'Business was successfully created.' if @business.save
    respond_with(@business)
  end


  # PUT /businesses/1
  def update
    business
    flash[:notice] = 'Business was successfully updated.' if @business.update_attributes(params[:business])
    respond_with(@business)
  end


  # DELETE /businesses/1
  def destroy
    business.destroy
    respond_with(business)
  end

protected

  def business
    @business ||= Business.find(params[:id])
  end
end