require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    num = (params[:number].to_i * params[:number].to_i).to_s
    num
  end

  get '/say/:number/:phrase' do
    final_string = ""
    str = params[:phrase] + " "
    final_string += str * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    str = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    str
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case params[:operation]
    when add
      answer = (num1 + num2).to_s
    when subtract
      answer = (num1 - num2).to_s
    when multiply
      answer = (num1 * num2).to_s
    when divide
      answer = (num1 / num2).to_s
    end

  end

end
