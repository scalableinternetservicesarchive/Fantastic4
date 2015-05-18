class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :vote]

  # GET /posts
  # GET /posts.json
  def index
      @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @voters = @post.voters
  end
  
  

  # GET /posts/new
  def new
    @post = Post.new(post_params)
  end

  # GET /posts/1/edit
  def edit
  end
  
  # POST /posts
  # POST /posts.json
  def create
    success = false
    notice = ""
    if current_user != nil
      @post = Post.new(post_params)
      if @post.save
        success = true
        current_user.created_posts << @post
        notice = "Post was successfully created"
      end
    end
    
    respond_to do |format|
      if success == true
        format.html { redirect_to @post, notice: "#{notice}" }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  
  # only called on user's profile page
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def vote
    click_page = params[:click_page]
    notice = ""
    if @post.voters.include?(current_user)
      notice = "You've voted before."
    else
      @post.voters << [current_user]
      @post.vote_count += 1
      @post.save
    end

    respond_to do |format|
      if click_page == 'event_show'
        format.html { redirect_to @post.event, notice: "#{notice}" }
      elsif click_page == 'post_show'
        format.html { redirect_to @post, notice: "#{notice}" }
      end
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:event_id, :text_content, :vote_count, :click_page, :image)
    end
end
