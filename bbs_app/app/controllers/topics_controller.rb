class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]

  # GET /topics
  # GET /topics.json
  def index
     @topics = Topic.paginate(page: params[:page])
     @newtopic = Topic.new
  end

  # GET /topics/1
  # GET /topics/1.json
  def show
    @post = Post.new(:topic_id => params[:id])
    @posts = Post.where(topic_id: params[:id])
  end

  # POST /topics
  # POST /topics.json
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
  # PATCH/PUT /topics/1.json
  def update
    respond_to do |format|
      if @topic.update(topic_params)
        format.html { redirect_to @topic, notice: 'トピックを編集しました。' }
      else
        format.html { redirect_to @topic, notice: 'トピックを編集できませんでした。'  }
      end
    end
  end

  # DELETE /topics/1
  # DELETE /topics/1.json
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
