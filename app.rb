require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse = params[:name].reverse
    "#{@reverse}"
  end
  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square.to_s}"
  end
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do
      "#{@phrase}"
    end
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}"
  end
  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    case @op
    when 'add'
      @add = params[:number1].to_i + params[:number2].to_i
      "#{@add.to_s}"
    when 'subtract'
      @sub = params[:number1].to_i - params[:number2].to_i
      "#{@sub.to_s}"
    end
  end
end
