require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i
    (@squared**2).to_s
  end




  get '/say/:number/:phrase' do
    @string = ""
    (params[:number].to_i).times do params[:phrase]
      @string << params[:phrase]
    end
  @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
     "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
  operation = params[:operation]
  num1 = params[:number1].to_i
  num2 = params[:number2].to_i
  if operation == "add"
    result = num1 + num2
  elsif operation == "subtract"
    result = num1 - num2
  elsif operation == "multiply"
    result = num1 * num2
  elsif operation == "divide"
    result = num1 / num2
  else
    result = "Unable to perform this operation"
  end
  result.to_s
end


end
