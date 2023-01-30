class ArticlesController < ApplicationController

  # http_basic_authenticate_with name: "make", password: "goodposts", except: [:index, :show, :new]

  def index
    @articles = Article.all
  end

  def show
      @article = Article.find(params[:id])
      @author = User.find(@article.user)
  end

  def new
    if !user_signed_in?
      flash[:notice] = "Login to post"
      redirect_to "/"
    end  

    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user.id
    
    if @article.save!
      flash[:notice] = "You created a post! Awesome"
      redirect_to @article
    else
      flash[:notice] = "Failed to create post"
      # render :new, status: :unprocessable_entity
      redirect_to @new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def article_params
      params.require(:article).permit(:title, :body, :status, :user)
    end
end
