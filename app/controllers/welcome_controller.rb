class WelcomeController < ApplicationController
  def index
		render plain: "Howdy, pardner!"
  end
	def show
		render plain: "Howdy, pardner! Or should I say #{params[:name].upcase}?"
	end
	def lorem
		if params[:type].downcase == 'standard'
			render plain: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
		elsif params[:type].downcase == 'hipster'
			render plain: "Pour-over trust fund selvage banjo, ennui Thundercats Kickstarter salvia art party single-origin coffee Shoreditch. Cronut 3 wolf moon Pitchfork 90's blog before they sold out, selvage fap hashtag irony. Gluten-free narwhal blog lumbersexual irony. Pug kogi readymade narwhal, DIY banh mi food truck disrupt. Roof party bicycle rights Portland typewriter, mustache +1 you probably haven't heard of them flexitarian put a bird on it blog biodiesel PBR&B post-ironic. Craft beer chillwave pop-up keytar. Wes Anderson taxidermy kale chips, Pinterest mlkshk iPhone fixie chia skateboard."
		else
			render plain: "I have no idea what you are talking about..."
		end
	end
end