class DelrequestsController < ApplicationController
  before_action :set_delrequest, only: [:show, :edit, :update, :destroy]

  # GET /delrequests
  # GET /delrequests.json
  def index
    @delrequests = Delrequest.paginate(page: params[:page], per_page: 10)
    @delrequest = Delrequest.new
  end

  # GET /delrequests/1/edit
  def edit
  end

  # POST /delrequests
  def create
    @delrequest = Delrequest.new(delrequest_params)
    if @delrequest.reason.length > 1000
      format.html { redirect_to  topics_show_path(@post.topic_id), notice: '内容は1000文字までです。' }
    end
    respond_to do |format|
      if @delrequest.save
        format.html { redirect_to delrequests_path, notice: '削除依頼を作成しました。' }
      else
        format.html { redirect_to delrequests_path, notice: '何か書いてください。'  }
      end
    end
  end

  # PATCH/PUT /delrequests/1
  def update
    respond_to do |format|
      if @delrequest.update(delrequest_params)
        format.html { redirect_to delrequests_path, notice: '削除依頼を更新しました。' }
      else
        format.html {  redirect_to delrequests_path, notice: '削除依頼を更新できませんでした。' }
      end
    end
  end

  # DELETE /delrequests/1
  def destroy
    @delrequest.destroy
    respond_to do |format|
      format.html { redirect_to delrequests_path, notice: '削除依頼を削除しました。' }
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
