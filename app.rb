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

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    str = params[:word1] + params[:word2] + params[:word3] + params[:word4] + params[:word5]
    str
  end

end
