class ArticlesController < ApplicationController

	 def create
	 	@article = Article.create(url: params[:article][:url])
	 	@result = @article.parse_page

	 	respond_to do |format|
	 		if @article.save
	 			format.js {}
	 		else
	 			format.js{"asdf"}
	 		end
	 	end

	 end

	 def new
	 	@article = Article.new
	 end

end
