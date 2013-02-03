class ArticlesController < ApplicationController

	 def create
	 	puts params.inspect
	 	@article = Article.create(url: params[:article][:url])
	 	@result = @article.parse_page
	 	# raise params.inspect
	 	respond_to do |format|
	 		if @article.save
	 			# format.html { redirect_to root_path }
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