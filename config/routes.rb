Rails.application.routes.draw do

	root 'pages#home'
  
	def draw(routes_name)
		instance_eval(File.read(Rails.root.join("config/routes/#{routes_name}.rb")))
	end

	draw :api

end
