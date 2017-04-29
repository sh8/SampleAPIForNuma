class ImagesController < ApplicationController
	protect_from_forgery except: :create

	def create
		if params[:file]
			image_data = params[:file]
			# 好きなパスを指定
			path = '/Users/shun/test.png'
			File.open(path, 'wb') { |file| file.write(image_data.read) }
		end
		render json: ["ok"]
	end

end
