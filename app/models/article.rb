class Article < ActiveRecord::Base
  attr_accessible :url

  def parse_page
  	@all = ""
  	open(self.url) {|f|
  		f.each_line {|line| @all << line}
  	}

  	@response = {}
  	@title = @all.scan(/<meta[\s]+property="og:title"[\s]+content="([^"]+)"/i).flatten[0]
  	@response[:title] = @title
  	@image = @all.scan(/<meta[\s]+property="og:image"[\s]+content="([^"]+)"/i).flatten[0]
  	@response[:image] = @image
  	@description = @all.scan(/<meta[\s]+property="og:description"[\s]+content="([^"]+)"/i).flatten[0]
  	@response[:description] = @description

  	@response

  end
end
