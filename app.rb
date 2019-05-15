require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @platinizer = PigLatinizer.new
        @text = params[:user_text]
        erb :latinized
    end


end