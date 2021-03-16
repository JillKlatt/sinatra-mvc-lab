require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        #binding.pry
        p = PigLatinizer.new
        @answer = p.piglatinize(params[:user_phrase])
        #binding.pry
        erb :results
    end
end