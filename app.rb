require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    # renders name backwards
    @username = params[:name]
    "#{@username.reverse}"
  end

  get '/square/:number' do
    # renders square of a number
    @num1 = params[:number].to_i
    "#{@num1 * @num1}"
  end

  get '/say/:number/:phrase' do
    # repeat phrase n times
    @phrase1 = params[:phrase]
    @num1 = params[:number]
    num2 = @num1.to_i
    # until times == @num1 do
    #   puts "#{@phrase1}"
    #   times += 1
    # end
    num2.times do
      "#{@phrase1}"
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # concatenates the words and adds a period
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

  end

  get '/:operation/:number1/:number2' do
    # adds two numbers together
    # subtracts the second number from the first
    # multiples two numbers together
    # divides the first number by the second number

  end

end
