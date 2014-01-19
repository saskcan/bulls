class PublicCommentsController < ApplicationController
  before_action :set_bull, only: [:index, :show, :new, :create, :destroy]
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :check_admin

  # GET /bulls/:bull_id/comments
  # GET /comments.json
  def index
    @public_comments = @bull.public_comments
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @public_comment = @bull.public_comments.build
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
    @public_comment = @bull.public_comments.create()
    @public_comment.content = params[:public_comment][:content]
    @public_comment.bull_id = @bull.id
    @public_comment.user_id = current_user.id

    respond_to do |format|
      if @public_comment.save
        format.html { redirect_to [@bull], notice: 'Public comment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @public_comment }
      else
        format.html { render action: 'new' }
        format.json { render json: @public_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @public_comment.update(public_comment_params)
        format.html { redirect_to [@bull, @public_comment], notice: 'Public comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @public_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @public_comment.destroy
    respond_to do |format|
      format.html { redirect_to [@bull] }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bull
      @bull = Bull.find(params[:bull_id])
    end

    def set_comment
      @public_comment = @bull.public_comments.find(params[:id])
    end

    def check_admin
      unless current_user.isAdmin?
        redirect_to [bulls_path], notice: 'Public Comments can only be posted by admin'
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:public_comment).permit(:user_id, :bull_id, :content)
      #params.require(:comment).permit(:content, :bull_id)
    end
end