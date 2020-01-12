require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get 'reversename/:name' do
    @name = params[:name].select do |name|
      name == params
      @medicine = all_the_medicines.select do |medicine|
    medicine.id == params[:id]
  end.first
  erb :'/medicines/show.html'
    
    erb :'/medicines/show.html'
  end


end