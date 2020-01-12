require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get 'reversename/:name' do
    @name = params[:name].reverse
    erb :'%2Freversename%2Fname.html'
    
    @reverse = params[:name].reverse
    "#{@reverse}"
  end

end