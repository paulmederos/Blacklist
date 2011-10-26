class ComplaintsController < ApplicationController
  helper_method :complaint

  respond_to :html, :json, :xml

  def index
    @complaints = Complaint.all
    respond_with @complaints
  end


  def show
    respond_with(complaint)
  end


  def new
    respond_with(complaint)
  end


  def edit
    respond_with complaint
  end


  def create
    @complaint = Complaint.new(params[:complaint])
    @complaint.save
    respond_with(@complaint)
  end


  def update
    complaint
    @complaint.update_attributes(params[:complaint])
    respond_with(@complaint)
  end


  def destroy
    complaint.destroy
    respond_with( complaint )
  end

protected
  def complaint
    return @complaint if @complaint

    if params[:id]
      @complaint = Complaint.find( params[:id] )
    else
      @complaint = Complaint.new
    end

    @complaint
  end

end
