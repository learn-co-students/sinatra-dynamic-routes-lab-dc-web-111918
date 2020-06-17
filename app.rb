require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    (params[:number].to_i * params[:number].to_i).to_s
  end

  get '/say/:number/:phrase' do
    result = ""
    params[:number].to_i.times {result << params[:phrase]}
    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    if params[:operation] == "add"
      "#{number1 + number2}"
    elsif params[:operation] == "subtract"
      "#{number1 - number2}"
    elsif params[:operation] == "multiply"
      "#{number1 * number2}"
    elsif params[:operation] == "divide"
      "#{number1 / number2}"
    end
  end

end
