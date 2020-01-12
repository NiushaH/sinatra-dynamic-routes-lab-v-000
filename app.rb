require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reverse = params[:name].reverse
    "#{@reverse}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    @square = number*number
    "#{@square}"    
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase*number
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    
    array = "#{@word1}, #{@word2}, #{@word3}, #{@word4}, #{@word5}"
    
    @string_words = array.split(",").join + "."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    
    sum = number1+number2
    difference_A = number1-number2
    difference_B = number2-number1
    product = number1*number2
    quotient_A = number1/number2
    quotient_B = number2/number1

    operation = sum || difference_B || difference_A || product || quotient_A || quotient_B

    @result = operation.to_s
    
  end

end