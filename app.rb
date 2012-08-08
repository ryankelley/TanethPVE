require 'rubygems'
require 'sinatra'
#require 'sinatra/activerecord'
# require 'sinatra/base'
require './partials.rb'
#require 'digest/sha1'
# require 'rack-flash'
gem 'emk-sinatra-url-for'
require 'sinatra/url_for'
enable :sessions

#ActiveRecord::Base.include_root_in_json = false

helpers Sinatra::Partials

# class MyApp &lt; Sinatra::Base
#   enable :sessions
#   use Rack::Flash

#   post '/set-flash' do
#     # Set a flash entry
#     flash[:notice] = "Thanks for signing up!"

#     # Get a flash entry
#     flash[:notice] # =&gt; "Thanks for signing up!"

#     # Set a flash entry for only the current request
#     flash.now[:notice] = "Thanks for signing up!"
#   end
# end



# # Creating classes for our stored database entities
# # This allows us to use this as active record entities, saving and retrieving from the db
# class Movie &lt; ActiveRecord::Base
	# has_one :now_showing, :dependent =&gt; :destroy
	# has_one :upcoming, :dependent =&gt; :destroy
# end

# not_found do
	# erb :error, :layout =&gt; :layout_blank
# end

# class NowShowing &lt; ActiveRecord::Base
	# belongs_to :movie
# end

# class Upcoming &lt; ActiveRecord::Base
	# belongs_to :movie
# end



# before '/dashboard' do
# 	unless authenticate!
# 		redirect '/login'
# 	end
# end


#get main page
get '/' do
	erb :index
end

get '/players' do
	erb :players, :layout => :layout_blueprint
end

get '/castle' do
	erb :castle, :layout => :layout_blueprint
end

# This is the add movie page
get '/farm' do
	erb :farm, :layout => :layout_blueprint
end




#getting the form for adding a new NowShowing



