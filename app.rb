require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end 

  get '/square/:number' do
    @squared = params[:number].to_i ** 2
    "#{@squared}"
  end 

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation] 
    answer = ""
      case @operation 
      when "add"
        answer = (@num1 + @num2).to_s
      when "subtract"
        answer = (@num1 - @num2).to_s
      when "multiply"
        answer = (@num1 * @num2).to_s
      when "divide"
        answer = (@num1 / @num2).to_s
      end 
    end  
end