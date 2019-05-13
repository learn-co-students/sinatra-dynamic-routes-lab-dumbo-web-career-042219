require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @revname = params[:name].reverse!
    "#{@revname}"
  end 
  
  get '/square/:number' do
    @result = params[:number].to_i**2
    "#{@result.to_s}"
  end 

  get '/say/:number/:phrase' do
    final_string = ''
    params[:number].to_i.times do 
      final_string+="#{params[:phrase]}\n"
    end 
    final_string
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
  @result = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  "#{@result}"
  end 

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_f
    @num2 = params[:number2].to_f
     
    if params[:operation] == 'add' 
      @result = @num1 + @num2
    elsif params[:operation] == 'subtract' 
      @result = @num1 - @num2
    elsif params[:operation] == 'multiply' 
      @result = @num1 * @num2
    else params[:operation] == 'divide' 
      @result = @num1/@num2
    end 
    
    "#{@result}"
  end 

end