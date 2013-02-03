class FashionController < ApplicationController

  def signup
    @user = User.new
    @article = Article.new

  end

  def social_acounts
  end

  def press_articles
  end

  def page_setup
  end

  def five
  end

  def analytics
  end

  # def create
  #   puts params.inspect
  #   @article = Article.create(url: params[:article][:url])
  #   @result = @article.parse_page
  #   # raise params.inspect
  #   respond_to do |format|
  #     if @article.save
  #       puts "saved"
  #       # format.html { redirect_to root_path }
  #       format.js {}
  #     else
  #       puts "didn't save"
  #       format.js{"asdf"}
  #     end
  #   end

  #   puts "end"

  #  end

  #  def new
  #   @article = Article.new
  #  end

end
