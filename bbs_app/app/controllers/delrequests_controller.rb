class DelrequestsController < ApplicationController
  before_action :set_delrequest, only: [:show, :edit, :update, :destroy]

  # GET /delrequests
  # GET /delrequests.json
  def index
    @delrequests = Delrequest.all
    @delrequest = Delrequest.new
  end

  # GET /delrequests/1
  # GET /delrequests/1.json
  def show
  end

  # GET /delrequests/new
  def new
    @delrequest = Delrequest.new
  end

  # GET /delrequests/1/edit
  def edit
  end

  # POST /delrequests
  # POST /delrequests.json
  def create
    @delrequest = Delrequest.new(delrequest_params)

    respond_to do |format|
      if @delrequest.save
        format.html { redirect_to @delrequest, notice: 'Delrequest was successfully created.' }
        format.json { render :show, status: :created, location: @delrequest }
      else
        format.html { render :new }
        format.json { render json: @delrequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delrequests/1
  # PATCH/PUT /delrequests/1.json
  def update
    respond_to do |format|
      if @delrequest.update(delrequest_params)
        format.html { redirect_to @delrequest, notice: 'Delrequest was successfully updated.' }
        format.json { render :show, status: :ok, location: @delrequest }
      else
        format.html { render :edit }
        format.json { render json: @delrequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delrequests/1
  # DELETE /delrequests/1.json
  def destroy
    @delrequest.destroy
    respond_to do |format|
      format.html { redirect_to delrequests_url, notice: 'Delrequest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delrequest
      @delrequest = Delrequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def delrequest_params
      params.require(:delrequest).permit(:address, :del_id, :reason)
    end
end
