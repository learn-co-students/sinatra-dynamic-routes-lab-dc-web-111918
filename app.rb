require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse!
  end

  get '/square/:number' do
    (params[:number].to_i * params[:number].to_i).to_s

  end

  get '/say/:number/:phrase' do
    words = ""
    params[:number].to_i.times do
      words += params[:phrase]
    end
    words
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = ""
    string = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case params[:operation]
    when 'add'
      total = num1 + num2
    when 'subtract'
      total = num1 - num2
    when 'multiply'
      total = num1 * num2
    when 'divide'
      total = num1 / num2
    end
    total.to_s
  end
end
