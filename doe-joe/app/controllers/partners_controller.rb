class PartnersController < ApplicationController
  before_action :set_partner, only: [:show, :edit, :update, :destroy]
  def show
  end

  # GET /partners/new
  def new
    @partner = Partner.new

  end

  # GET /partners/1/edit
 

  # POST /partners
  # POST /partners.json
  def create
    @partner = Partner.new(partner_params)

    respond_to do |format|
      if @partner.save
        format.html { redirect_to @partner, notice: 'You are partnered up!' }
        format.json { render :show, status: :created, location: @partner }
      else
        format.html { render :new }
        format.json { render json: @partner.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @partner.destroy
    respond_to do |format|
      format.html { redirect_to partners_url, notice: 'Partner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
    def set_partner
      @partner = Partner.find(params[:id])
      @locations = @partner.locations.all
    end
    def partner_params
      params.require(:partner).permit(:name, :email, :remarks, :curriculum, locations_attributes:[:id, :area, :coordinatorname, :contact, :address, timeslots_attributes:[:id, :day, :start, :end, :noofseats]])
    end
end
