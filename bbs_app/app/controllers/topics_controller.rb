class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]
  skip_before_action :set_topic, only: [:search]

  # GET /topics
  def index
     @topics = Topic.paginate(page: params[:page]).search(params[:search])
     @newtopic = Topic.new
  end

  # GET /topics/1
  def show
    @post = Post.new(:topic_id => params[:id])
    @posts = Post.where(topic_id: params[:id]).search(params[:search])
  end

  # POST /topics
  def create
    @topic = Topic.new(topic_params)
    #debugger
    if @topic.name == ""
      @topic.name = "名無しさん"
    end
    respond_to do |format|
      if @topic.save
        format.html { redirect_to topics_path, notice: '投稿できたよ。' }
      else
        format.html { redirect_to topics_path, notice: 'タイトルは何か入れてね。' }
      end
    end
  end

  # PATCH/PUT /topics/1
  def update
    respond_to do |format|
      if @topic.update(topic_params)
        format.html { redirect_to @topic, notice: 'トピックを更新しました。' }
      else
        format.html { redirect_to @topic, notice: 'トピックを更新できませんでした。' }
      end
    end
  end

  # DELETE /topics/1
  def destroy
    @topic.destroy
    respond_to do |format|
      format.html { redirect_to topics_path, notice: 'トピックを削除しました。' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic
      @topic = Topic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topic_params
      params.require(:topic).permit(:title, :name, :content, :image, :posts_id)
    end
end
